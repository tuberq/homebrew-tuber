class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.15/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "3204c394947903a0bf8470cbebd203fb8ebf43e42b94769ac936e8e4231adf65"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.15/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "7ce2f9f7d901a3fe16725539b34fd7999f4e27a9a3f470363a51435f21be5427"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.15/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9fd1d08a624c60f3fa9be0253ef22774437779e8e8cfbb3ee2792190ffd94749"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.15/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4bc718fccaf14390e27749cd0e17c4efedf0d7e85f77e14177100bf11c9244a0"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
