class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.6.1/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "d27682a08d6024fd6b23f095d16c374cd33aa98ee214c48f5524410be57cba6a"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.6.1/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "8314599d56f94fef0327bb2098abb519f94f321d4c5e12f16d2ab07514eca01f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.6.1/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82d885569bbdcf2340d77e3eb4554a4a12098763e587fd7bdd2e2d81b80a796d"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.6.1/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b575c98c447825a6671a68fa52bebf393798ed3b468ba49957305da8599b760"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
