class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.1.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "87bd9cacb149f55d89c12daa6b528d20ac96887c1acb689c45c340967783282d"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.1.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "27115e4fabc7cc6d378755bdefdb81f4d121e366e3515c0ea19e0fa6a79a7ef3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.1.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d9bf1432b1271abea9f3f41f51c220739e2fe80ae46d19e53f8c43e14d0eade9"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.1.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fa234b4f68866c1d18d15e36247ab211126cf084753ab96659ea1678aa44b39b"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
