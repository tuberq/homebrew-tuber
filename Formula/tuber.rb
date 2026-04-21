class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.3/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "1ea7b65bb82f6ce18774341e8104263fa541f4b9f9ef13047eee26c6d02c036b"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.3/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "d317b247e8ce714a681890210e41c72861283888eeec227542e696e2e4ed46c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.3/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38e92699c4f596ca92f04cedcbab0bac3b2d34de3e5cac215038c7b532840665"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.3/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "700a5737f2b2aa9e4eb7529830c65295c8c07f64e06edde29ef9f32b62205c1d"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
