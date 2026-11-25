class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.21.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "edb842f37b17e6f6ee834e844f65eece13d2e386787b601ce1ffed60381f3a8b"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.21.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "255d209aad35a152bc47a6d264455439633e699423bc08552f49431cdb1e6ac7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.21.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e8c622c8fcf33b076ef2906fbe592ebf7e6660561770e041eb1d750231684d1"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.21.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ee551c0d3705a8d37e0477a28b4e42dfa32b5086c56094c74fb6c08ba769543"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
