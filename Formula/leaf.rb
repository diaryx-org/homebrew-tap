class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.16"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.16/leaf-macos-arm64.tar.gz"
      sha256 "d6fa51d3e46ad005569fcd27db18937e433e4b46014a2f4f5cf554f44eccdea6"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.16/leaf-macos-x86_64.tar.gz"
      sha256 "1278da8c8bacd43bdc32f73945733b332a43805c4c4404d9f61c54256ac2413b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.16/leaf-linux-aarch64.tar.gz"
      sha256 "714fcbede6b49812a230edba7d1a51639933ac3eb17b58803018a4f2e211626d"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.16/leaf-linux-x86_64.tar.gz"
      sha256 "3219a8bc89faae813ba48dcc540e45731bb5db03f04462f12b9ec9c9da5b88fc"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
