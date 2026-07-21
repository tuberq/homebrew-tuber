class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.8.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "4dbcfa4775295e7d7f09b08a5cde99f38055b381c52b69eae6c93ad1dc35bc67"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.8.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "2867cfe7771b2d1ccd20ee641ef87c4ffcad24ff5022d591701615221050beac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.8.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6b6b7b2e87b723219393e9616e6fc2006e85661e2affd956a5200e8812a8522d"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.8.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f95cf9e47d24ccf969038f219e77c952314fc8538b232fd7f12afab535ee545"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
