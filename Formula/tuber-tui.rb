class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.17.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "8eb215ee53502fb555c2bcb28d2b96bbb643429ceb97d51dc47f2f7d9c06e00e"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.17.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "43db06eb238a6f22586a19f7c5628341a86ddf2307debc49d957116358c75110"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.17.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec662e57c471312dfecbe1d8eeab7a5ffcf6fed557a745431417b1a43a88253b"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.17.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c261a3c690e990b940a21c1fac4d7c8af2665e024396cb8695d996b2d59a14b1"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
