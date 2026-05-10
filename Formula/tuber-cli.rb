class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.5/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "587f01f6fcf54d8dcd103431dcd6a6e4f0879a7f2725b3cf6b1dd5edf05710ee"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.5/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "da70a7014e29ca5a14b581fe49df232a3de868d7ec3b65384964fa269f297351"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.5/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe0e1690f6344abb5fa7cd5e6be18434de2d2fa89f885c25cefabe5e15b55dc9"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.5/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4e1cbd2b8f679c14de6c155ec412e619ab437d7ed6e6a760e12b1c7d55ec57a6"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
