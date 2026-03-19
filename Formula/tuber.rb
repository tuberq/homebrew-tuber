class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.2.11/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "ee7bb68ccd0b29c5bf631bd7602f26a3e6edad8627596beac7ac1720bf9d0712"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.2.11/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "9ae0d6046177ffab8e1a9e1676bdd951927e42fac08695cdab3915cddce0f43f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.2.11/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1d4517b07b2d46c64afcbf969dbca8bd95cda92db2c668e3b3b6830e6d0992b"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.2.11/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b89eefab6f9ae682c8d068fecf2410063d6289bf532f798867a56fe28130c34"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
