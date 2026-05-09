class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.4/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "e3895712a73af94983bbde471aee2d26c52e8396ccaf48bf9e685d3130c40c34"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.4/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "47b1d2e971cebf13aea01d03039cd9e5f7ed2306d74fc72acd7855752aa3c708"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.4/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "efcc3d8b362842ba21cdbdda773fe6cf94f810afb6136f09eb5058f93b12712a"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.4/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d18bc6593f393cdc241725cb558a76f02612c01bb45b355847a5c4d2767a346"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
