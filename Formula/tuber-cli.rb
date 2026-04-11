class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.2/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "9a13ac0e0585cf6ad70df93743a8d056d5830a76ed9e6121749152c55f410341"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.2/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "3e793d4a50a3d554ea3f74a718f469e0b662c4033b09f8617813d65a3be0f3ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.2/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b773ea1d0630e95db1ce2ca632241901cbac06ada8e1fe48f5f26060c941d2cd"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.2/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28d0bf508c64ca361c59fdeaa2aafd7fd59b26ce87d595d1db9fb1900e30b5a5"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
