class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.5/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "0e8c5755cd431d98981cbbb1cb752b19e6fb98895ad2115020bf3b115ac8df4a"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.5/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "6b587634b804c30da8226bd7bcae7ff9f0f292e243743e8d27737f193a0e3799"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.5/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72ebe67bbedba7b9c1136affbc3491b05664fbf496a8af26048c2583d75f5d9f"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.5/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d312c5d1fffa17098bc69f40692bc1a00ce4fb0c613380242bba04a3272f78d3"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
