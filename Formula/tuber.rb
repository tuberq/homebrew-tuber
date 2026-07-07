class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.9.1/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "f0d8490483318f12347360efa3319ffb184ac55d6c9f56727db9a53dd1469f41"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.9.1/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "e445029ae72c1db6c4d5b3cc04559087a269fe27b1e99e8d8949adb3481b3bac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.9.1/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f726369303eb1a9bd3ff373007ab02e37d28eabc7df5a4ba8ff4e016c10ca3b1"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.9.1/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "245603772dc3ccda23d45bf4ffc8f76ffbe5e1270fa9ebf6cedf4965c6d1bbea"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
