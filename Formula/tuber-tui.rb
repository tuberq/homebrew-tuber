class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.16.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "ebe166aa39478273ba59ef353b1726d44e9baf6f5d88d49719409eeefa73d1d5"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.16.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "afdae9bbe545e66ab599daf6c393d316c128bde0b5dd71b3a87d4ce9285658c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.16.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b8a3f55ac13170294b9f1a705339766e236cdb8aeb58fd1c0de8304098c2ff8"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.16.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d1139b6f4979fd51a2d3c5e54aa7d348f62d7104ba634e7a295f2b8aaf5bf3a"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
