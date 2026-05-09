class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.4/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "291926de442827d12fa27d7fd15b9807f818ac5d84bce46eb637eb9e9a12f9b3"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.4/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "07fc7e75681db2c0c6f87e7f55bcafef42785f40c3f92b6c7aad8ed338948576"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.4/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "17136f14bfaa1bfa5eaeb7c354b9fa5df0b6045f141496c0a2f7f2f1547cf5e3"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.4/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a189f2f57a81a600d2c723719b62ee2b3c9d99217fed22d1c9605d420670c147"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
