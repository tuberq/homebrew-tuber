class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.9/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "2f2608a15e5cff5f59d6a21cf6c935330beb970ba0de9f2233bf4ea19229dd4f"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.9/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "0d6e9090d1a982d25b822940ed60e0af680a0821d2973f58f60b801e140e2f83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.9/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24f9c0dcda8dd84ee7fe1ac9bcac42823cfc364b5eab9186dd56287aa42d1eab"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.9/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6e47affad830a4dea35e3b9f1ac8cf6ff8b03ebdb9771c41c7ce65e2ce3e4bc"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
