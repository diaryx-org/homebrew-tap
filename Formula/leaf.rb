class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.4/leaf-macos-arm64.tar.gz"
      sha256 "a718de0375e3846df795e2bc4223cba591fb3f00c006c764cd582db57d3b571f"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.4/leaf-macos-x86_64.tar.gz"
      sha256 "0687890d453c8f125d7e9c93fefd956974b5e7c63dd556e40fe3b5be4c532c7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.4/leaf-linux-aarch64.tar.gz"
      sha256 "b431024ec7a3f11cf9ed09ccf210480147a734b05a13e20c7addcf43b425f093"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.4/leaf-linux-x86_64.tar.gz"
      sha256 "b8c697369ed605caf810c3a8d6206c379ab49e64eee359745b46c3b410ce0f06"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
