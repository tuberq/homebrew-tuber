class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.16.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "24c9a9f9a13a30ef91cbf0533661188e75cd524612015ff03242d7e325808c21"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.16.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "378af4d9a61c3068d497d025bdd6222534a18edd7a24d16be62d9383e90961cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.16.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c77f453ddd7123b4f46a094e00621cfc441efd4558f235b282c41eaf312052f7"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.16.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59ecf70e2d7d59ff345c9410e1cfbd39a2e0171f458c71a78a5a57bebfbe5254"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
