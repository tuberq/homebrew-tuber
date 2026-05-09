class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.6.1/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "ad6fca77bb180c51f389e0140400d29949bc9e44b75318435797ea96bedc9410"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.6.1/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "86161cd8adfc4875f55f2c5f92e90e67250ebb0ae3f28265da0a7d56343b1eeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.6.1/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aac559d0a8b37a789b3f7ca8afe70015ad65c5c3cf7208612be016877269b2e5"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.6.1/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ca282425ee4dab430ab5a6e5e4d82622243c21f3273dd487effba9e087ab628"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
