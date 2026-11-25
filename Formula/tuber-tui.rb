class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.21.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "a2828b37902d3e68dcaa46a68b869daab1b4d2f53fdfd1ed28ec3d68baa4dffa"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.21.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "f4a9726e3042ec2c53dcc7ea84e5cb95b9065a49b726d8ebc5f7644a2cca8f6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.21.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "782ae1dd9009135485926de9e472c2d5df4a8512182684e6f367b91b933590ac"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.21.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "042587b7208ce9db35699a79d31f067e02342f46fa8ca3de389de6527dce065b"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
