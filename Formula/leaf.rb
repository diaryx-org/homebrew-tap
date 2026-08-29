class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.5"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.5/leaf-macos-arm64.tar.gz"
      sha256 "11ba7c69a68c01e0b84a244b115fb2da289749559ca40084161b36a5a5b730a6"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.5/leaf-macos-x86_64.tar.gz"
      sha256 "91b68a53bb2244d99a240f2702ad67afe7ebd79d4b8b677904f72f5b73164192"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.5/leaf-linux-aarch64.tar.gz"
      sha256 "9dbd539f276c14088e4ca7d5a4dd95b03fc07e1bda8cb4e28d9114ce1a8bf15a"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.5/leaf-linux-x86_64.tar.gz"
      sha256 "fcb3e4ee1a8aee50d4eddb78f22a258457269da4618ce6a618b92aff071f2798"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
