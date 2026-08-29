class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.4/leaf-macos-arm64.tar.gz"
      sha256 "10dd37b2547a1be7e71bce46aadc679445d02d91558a61fadd40542d5a05030f"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.4/leaf-macos-x86_64.tar.gz"
      sha256 "661091c8493aac935fe725c1873be6f2fc41e15a0a41cdbe27ab22c375d3362a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.4/leaf-linux-aarch64.tar.gz"
      sha256 "0995c882cf7b2534f474d5c5ddf497375a60a07729e2bc0ae3b0a20a7006c976"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.4/leaf-linux-x86_64.tar.gz"
      sha256 "922f35a1969d7bc339de741e490e18e254d26496ab7abb31fc568649363bbc60"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
