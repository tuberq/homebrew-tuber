class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.12.0/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "6c0e2394c068d877a954c8cba99a192f0e998d83f2dc6d698e14880030641e29"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.12.0/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "cac8b4397aa6d74049475d137dd51d9a1fad02ad7ab5d54340058b12036c1f5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.12.0/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d0ffc2b33a2d13afd9a8d9ef7ace2ecd00fde12fa1003e2b3b0e27993083999"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.12.0/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29062d78bae2fd5edd7afa36b731fb83e09a8b446f119bc0b271e2105b09bf6c"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
