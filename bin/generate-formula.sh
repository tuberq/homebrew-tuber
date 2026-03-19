#!/usr/bin/env bash
#
# Generate Homebrew formulas for tuber and tuber-tui from the latest GitHub releases.
# Usage: ./bin/generate-formula.sh [tuber|tuber-tui] [version]
#   If no arguments, generates both formulas.
#   If version is omitted, uses the latest release tag.

set -euo pipefail

generate_tuber() {
  local REPO="tuberq/tuber"
  local VERSION="${1:-}"

  if [ -z "$VERSION" ]; then
    VERSION=$(gh release view --repo "$REPO" --json tagName -q '.tagName' | sed 's/^v//')
  fi

  local TAG="v${VERSION}"
  local BASE_URL="https://github.com/${REPO}/releases/download/${TAG}"

  local TARGETS=(
    aarch64-apple-darwin
    x86_64-apple-darwin
    aarch64-unknown-linux-gnu
    x86_64-unknown-linux-gnu
  )

  declare -A SHAS

  echo "Downloading tuber assets for ${TAG} and computing checksums..." >&2

  for target in "${TARGETS[@]}"; do
    asset="tuber-${target}.tar.gz"
    sha=$(curl -sfL "${BASE_URL}/${asset}" | shasum -a 256 | awk '{print $1}')
    SHAS[$target]="$sha"
    echo "  ${asset}: ${sha}" >&2
  done

  cat > Formula/tuber.rb <<FORMULA
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

  echo "Generated Formula/tuber.rb (v${VERSION})" >&2
}

generate_tuber_tui() {
  local REPO="tuberq/tuber-tui"
  local VERSION="${1:-}"

  if [ -z "$VERSION" ]; then
    VERSION=$(gh release view --repo "$REPO" --json tagName -q '.tagName' | sed 's/^v//')
  fi

  local TAG="v${VERSION}"
  local BASE_URL="https://github.com/${REPO}/releases/download/${TAG}"

  local TARGETS=(
    aarch64-apple-darwin
    x86_64-apple-darwin
    aarch64-unknown-linux-musl
    x86_64-unknown-linux-musl
  )

  declare -A SHAS

  echo "Downloading tuber-tui assets for ${TAG} and computing checksums..." >&2

  for target in "${TARGETS[@]}"; do
    asset="tuber-tui-${target}.tar.gz"
    sha=$(curl -sfL "${BASE_URL}/${asset}" | shasum -a 256 | awk '{print $1}')
    SHAS[$target]="$sha"
    echo "  ${asset}: ${sha}" >&2
  done

  cat > Formula/tuber-tui.rb <<FORMULA
class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/${REPO}"
  version "${VERSION}"
  license "MIT"

  on_macos do
    on_arm do
      url "${BASE_URL}/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "${SHAS[aarch64-apple-darwin]}"
    end
    on_intel do
      url "${BASE_URL}/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "${SHAS[x86_64-apple-darwin]}"
    end
  end

  on_linux do
    on_arm do
      url "${BASE_URL}/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "${SHAS[aarch64-unknown-linux-musl]}"
    end
    on_intel do
      url "${BASE_URL}/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "${SHAS[x86_64-unknown-linux-musl]}"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
FORMULA

  echo "Generated Formula/tuber-tui.rb (v${VERSION})" >&2
}

cd "$(dirname "$0")/.."

case "${1:-all}" in
  tuber)
    generate_tuber "${2:-}"
    ;;
  tuber-tui)
    generate_tuber_tui "${2:-}"
    ;;
  all)
    generate_tuber "${2:-}"
    generate_tuber_tui "${2:-}"
    ;;
  *)
    echo "Usage: $0 [tuber|tuber-tui|all] [version]" >&2
    exit 1
    ;;
esac
