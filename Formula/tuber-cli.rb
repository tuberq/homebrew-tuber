class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.6/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "f72e21e332a090828bea05e8647c6aee061777dfd2b6b650ba803d0e64064a77"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.6/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "4a06d2eb53a59b71479928531f6e6de2d5e628fc7f784aff52e3358e4161bf04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.6/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c711ae212cedd84bf22d1f38180ccd3d132252b9dfc79f488e1ad260ff85ba47"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.6/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a32917391956c4c36feb11b520ef48746b1738b322e6b9045554deb976901643"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
