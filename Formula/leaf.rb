class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.3.0/leaf-macos-arm64.tar.gz"
      sha256 "35a3b3cb71b861b5d1618287dc3a92a1725c48df43f9ecf6bcbfc1a313f302d1"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.3.0/leaf-macos-x86_64.tar.gz"
      sha256 "1887c1e9fdf0be5c1bda4fb38f357450c6a4d0eea039a46c3028b717f8e5cef2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.3.0/leaf-linux-aarch64.tar.gz"
      sha256 "979493b8e1f87f5a4800e434a4090644c8eb2c8abc04b92271eadae9673f8ab7"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.3.0/leaf-linux-x86_64.tar.gz"
      sha256 "eeddce84e9cfb8e753a0537dd1ecd52c2d1c4a5fff989facd5b31f8e4d7ec529"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
