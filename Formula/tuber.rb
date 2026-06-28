class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.8.1/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "823bce68f76433529e31c32638719e346a588ffc522e6fe7ebc1b9ac887c5b1f"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.8.1/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "c26973f0bc56a514cedf79a2c86f3d9bdefe3a71fab8692714bded27110076bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.8.1/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67d68c88a903196b1f1ec07b6f0adc6bc50ed98f92e087638cdded000bd32ca8"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.8.1/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7beeb92fe85fb08a75914cde6df448270a30f4f9380d24cf0afc11bb0e7efdd1"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
