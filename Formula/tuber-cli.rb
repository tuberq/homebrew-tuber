class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.6.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "88898da47566bb8343196173270f64ab9fee51ded544ee9d49850066a82bd4ee"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.6.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "f7471240217d9366a5cd5a791e1760c24a7ba2b67063f01769cce47f218c3020"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.6.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "509d4f6b772ccdeacce489f852d88f4936d1658e901b3a1a625bd63a257b02f9"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.6.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e06fa5cad0263a476878b19e19676f35a62c0f80073492a914a87862dee9d5ed"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
