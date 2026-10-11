class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.15.0/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "25d83cfe75fddffca0fdfbcb150768371a71d42c513991de6f555f54919d3a3a"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.15.0/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "1148fe917b2991c4606caf7f25011fb2707ac99e1146a53e53225105e1dc6b66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.15.0/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d11b72a503df33ae3a726bace22c42f08061e5fdafb8d5390987d52241acdf7"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.15.0/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ce34673f0a27d8ed41d76bc726ff090da78c132fe1a912f5f1ac0541d672728"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
