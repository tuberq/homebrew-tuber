class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.10.0/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "f381af3d2692685eda38caa84c552369d3931c4841dc93a5a6eedcc8af9238b9"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.10.0/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "49204bf7a4ec9e6b316369b3ce62b485d31393d9a3671ca4d7adb9bf50bb7f39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.10.0/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e144b89f04c84c25102006767c86411f861988f5b95b0eca7afed5ffc68736d"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.10.0/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95cfee5c08215dfe2d6d016a844f82a2f85ecdde35f20e44d52af9b99ba552bc"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
