class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.3/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "cdc87d37a76d2b566963f2fe7fc45f1defe164da1a75ea41a7de3d431f636720"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.3/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "feed40fd4c769a184e48f7f418ed1813de0153cdd2b24bb08a63bdc075d2c301"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.3/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "24d1b77d6660b064dbda77a9ae65678d16e91a9853a37cf7ed567f3512e71e02"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.3/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cac3c7d2a6077dd5c26fd1f84db85b19a6dab36b6913422ffc2ecd8733d983ac"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
