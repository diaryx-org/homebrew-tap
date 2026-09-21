class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.0/leaf-macos-arm64.tar.gz"
      sha256 "2704a0cc68a34f2509b5b4bab2940f0450a6fcbdfc41010341cb0693a166509d"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.0/leaf-macos-x86_64.tar.gz"
      sha256 "f2cb8086389bd8106c0bfbd08f1fbc264dada5a9a557ec63842206d4c965b00b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.0/leaf-linux-aarch64.tar.gz"
      sha256 "c215eaca977406043d2c6bf66da41f4fd633f5c6135048014c209b8999d9df49"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.0/leaf-linux-x86_64.tar.gz"
      sha256 "2cd57627a0a2d6f7072ee48ed2b4ff06f8abd1d7826b0977301165d062fa9c7a"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
