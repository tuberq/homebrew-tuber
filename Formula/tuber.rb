class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.6.2/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "4b71b7c54db2803ebd7def7237627d9ed1157b89882283728d6e8bfc582cb4c0"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.6.2/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "539219f3931aff3cc6f278f640d5adf43c330add299714e959649e76ffe3834a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.6.2/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8023a6552fad4d03a9e0569cc8683b8ee5b70fc2d2b0c19e60249a9189930cd4"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.6.2/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4069d5334cd40c04b51214f16b2f48e9f5d2fe27a34556cabf52f2e966f1eec6"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
