class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.2/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "7b8ddebc785d2f4e24a401fdb2f0e27266338064394e7158cddb7e741536053a"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.2/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "3356b20c95179250e4a0567dfe481d162d6fe41b6d979bbe7fea08730b2c5f56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.2/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c806dace01fcd894aaddf42ce94ca8dfbc2c1386284520ea8201cc19fd473014"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.2/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b26a3ac92210379be9be326bfc7d8a457c63d63cc9b8337a90c056da0b60358"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
