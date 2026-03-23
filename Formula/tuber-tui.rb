class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.1/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "12f85c429e13d7570eecb09cb047de41e1d51afe21b0635b0e991607332f696d"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.1/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "768d8e9a5b9b141646a23aa7115c98039ba863a09efa356ff30dc2784b5500a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.1/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b7e389fbf4f22b56a5b2ef4b4918a337a3d68da88671da110eff19d4aab3645"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.1/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ce4372786369a747ca8c786e1912ba542f5a4ffe7a7ca5206b28e613c9af777"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
