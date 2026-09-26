class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.7"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.7/leaf-macos-arm64.tar.gz"
      sha256 "d813daacdfa81a73d3ef23752d9e7a7e529360c52279350c0114e333a9dca46b"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.7/leaf-macos-x86_64.tar.gz"
      sha256 "fd9cd7104ea47dbbe60de760b2d5fb8fe441206b7cf35bdf6cc7bc958efcf592"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.7/leaf-linux-aarch64.tar.gz"
      sha256 "9dd9814feaf982e6ada6b2e86e27a2a0acaaef09e93c278f27233d6313e3e5df"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.7/leaf-linux-x86_64.tar.gz"
      sha256 "e7dcd0a175ba03b5e488e5971946c3173e9097a8b8d9ad58b3244391553319fa"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
