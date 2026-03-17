#!/usr/bin/env bash
#
# Generate a Homebrew formula for tuber from the latest GitHub release.
# Usage: ./scripts/generate-formula.sh [version]
#   If version is omitted, uses the latest release tag.

set -euo pipefail

REPO="dkam/tuber"

if [ -n "${1:-}" ]; then
  VERSION="$1"
else
  VERSION=$(gh release view --repo "$REPO" --json tagName -q '.tagName' | sed 's/^v//')
fi

TAG="v${VERSION}"
BASE_URL="https://github.com/${REPO}/releases/download/${TAG}"

TARGETS=(
  aarch64-apple-darwin
  x86_64-apple-darwin
  aarch64-unknown-linux-gnu
  x86_64-unknown-linux-gnu
)

declare -A SHAS

echo "Downloading assets for ${TAG} and computing checksums..." >&2

for target in "${TARGETS[@]}"; do
  asset="tuber-${target}.tar.gz"
  sha=$(curl -sfL "${BASE_URL}/${asset}" | shasum -a 256 | awk '{print $1}')
  SHAS[$target]="$sha"
  echo "  ${asset}: ${sha}" >&2
done

cat <<FORMULA
class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/${REPO}"
  version "${VERSION}"
  license "MIT"

  on_macos do
    on_arm do
      url "${BASE_URL}/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "${SHAS[aarch64-apple-darwin]}"
    end
    on_intel do
      url "${BASE_URL}/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "${SHAS[x86_64-apple-darwin]}"
    end
  end

  on_linux do
    on_arm do
      url "${BASE_URL}/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "${SHAS[aarch64-unknown-linux-gnu]}"
    end
    on_intel do
      url "${BASE_URL}/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "${SHAS[x86_64-unknown-linux-gnu]}"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
FORMULA
