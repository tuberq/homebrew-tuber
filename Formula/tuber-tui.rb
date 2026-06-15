class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.6/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "8af4e6d6197261c03e7fe3ed350d7dc7be0cfc33509ef5b2c2af393fac39b37d"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.6/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "177884a479ea0734d4f69571b522e35682ab8162aed850ac80d917c885887a36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.6/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8fb32ddecbcf36cc67d03f4d2bce0823c0beed6b82d79d9adab4a234fd34509"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.6/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a44fe4ddbbce21d9018c23b12a8da58bb3b2a8a844614b581b4c4b6f3f5e006d"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
