class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.6.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "1cb71197fd169a7bee458b3e1a08c9045f14be036d006ffbb965ce34309e801f"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.6.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "d1d02454e373d5c60dd7577c5c7fcf38ce28b259b6c5561d9487c5c286686139"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.6.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c168740aefeb7bba844c850354ec844d011d590cd0ab3fd15c9b6244457b9967"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.6.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90b49ee3b90594590e93ef4c8c828e4e6813cf6cba9982197153be4207edf384"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
