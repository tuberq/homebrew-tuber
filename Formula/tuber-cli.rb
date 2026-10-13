class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.17.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "3dcd3543f73ce4acca82983840d9f4793300cd4e48a3ae193317b239e66abda6"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.17.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "0fe4c59e8f330dc51d639bb7c93f5f8afce251a3ab9d863aaf271321854bdb0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.17.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c690c0cc6a0d971fa5f44b54a4a277527a0ca8e4af6d8f4dcb8c0e4f69527dfc"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.17.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0efe6611193952008cf9363309bea7602c5c568b06f502987557d30d488ed798"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
