class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.8.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "f277df69d74df85084ceadb21c64891329e43ed6e62ef2afcaa90ec5c59e4ac7"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.8.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "2ae609412697086cc7510414e39aee66cd62275bf4121db8876ff945b340ad7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.8.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e8cd32e39c8954ea61d0b40816ef45703f72ede4f466504a79357388f71ce0f"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.8.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3956f81ffbfd115e3d273e6144bbd8e50b68b45a86db0f0d2d50ecd246331175"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
