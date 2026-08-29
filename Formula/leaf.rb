class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.3/leaf-macos-arm64.tar.gz"
      sha256 "ada34f2eeaf08eda0b7bb470a8b7e0cf9d6633675976d36e3fc0fa930d685159"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.3/leaf-macos-x86_64.tar.gz"
      sha256 "4d41472d32a304d8a29265e90eb36e9f67610371f7e67003e8507dc20b2719e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.3/leaf-linux-aarch64.tar.gz"
      sha256 "07f0491ca61fdcfab1eb3887101bd773e369710f86a1ea64504d72999f0397c3"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.3/leaf-linux-x86_64.tar.gz"
      sha256 "00e04f655c866572de1d9f82bf67aab1f8b83d0fa3ecb06ed9dc800d1a16864c"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
