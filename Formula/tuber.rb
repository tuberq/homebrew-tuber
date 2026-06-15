class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.7.2/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "4f62e4473edfac99311206796061a965158794c4c6e7325945c0691208e49406"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.7.2/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "b7bc2c2357a4e150a34a444d9eb206b22469ab749433fa3c0fe61dcb3360f5d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.7.2/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca64179ab4ee7381d38df56a274d413478bb5d854f050576accc046a18d75ee9"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.7.2/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e76a45b8d0a94acfe8f76ece54a443642c143f387fed50620a28b1de714592de"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
