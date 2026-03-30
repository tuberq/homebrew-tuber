class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.12/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "07152bf974da94fe7c0cb18bc2aec871b6b0f5ce795f4aaa26afab4f838101c6"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.12/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "cc86cadf6539e77e8e3526a0ccad1533255b4a94b56f6a22b77387c9fa5f3eb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.12/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9215e2b46ac5a56368deeff951b8b5beb50b566de225fdc1239f7d9f22e92367"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.12/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "165988af11e6a4dd7aee82db48e2929d591d1e25d7c949349247048cc13331c5"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
