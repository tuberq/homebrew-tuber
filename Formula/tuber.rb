class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.16.0/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "0ad61eb89a1f9ffbecee08e82b5758099a678a0d8631453ace6c79e0d9d3a3e6"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.16.0/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "f21f85f47dc0fe472bebcf57e107ee0c7efa8cf48bbca6582a2078ef68f28247"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.16.0/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a24d18e16445a2a6d8ed046be57335333b6c887595172d1837e73acec911800"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.16.0/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6c7ea332ff60205f9d5f87b27f6d122940bb185aea2a362bab5951dd72af455"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
