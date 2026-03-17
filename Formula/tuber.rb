class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/dkam/tuber"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dkam/tuber/releases/download/v0.2.10/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "cf8d0a3a575a4d6cc773e9a9a4aed4ae835d6578fbdcd7e6c3a2bd8df4e22401"
    end
    on_intel do
      url "https://github.com/dkam/tuber/releases/download/v0.2.10/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "55af5df3d77788a66b3bce5719d7342bbf3bde7734ebec0472173444b610d704"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dkam/tuber/releases/download/v0.2.10/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a54df807d01cd187a97b839c512f31a7636b0d75f59fefd0e931fd65ee72b76f"
    end
    on_intel do
      url "https://github.com/dkam/tuber/releases/download/v0.2.10/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e51c75c93212c8b799c346d365ca4a6252dca9da61fe6cb7772ab3a1df0ba0c1"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
