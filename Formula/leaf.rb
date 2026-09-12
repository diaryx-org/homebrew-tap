class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.9"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.9/leaf-macos-arm64.tar.gz"
      sha256 "0c0a2352ba3e4cc9d5f9ba21d1ca7a5d2b93b9f6f8d2d5f550b52f4e93a9596b"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.9/leaf-macos-x86_64.tar.gz"
      sha256 "59a86e939a897d3b0d314fdfe5a07f04baaa674070f38601cfbb88f5dab52e05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.9/leaf-linux-aarch64.tar.gz"
      sha256 "ec6968c2de2412b01631ab2d257a23b03bb5cbf6e9ca47a8504c1ed8592c2555"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.9/leaf-linux-x86_64.tar.gz"
      sha256 "c9b96dcfd106e6449bcd70b77297c66a908e923294aaa910c1d895cf9a46a169"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
