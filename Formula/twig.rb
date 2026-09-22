class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.9.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.0/twig-macos-arm64.tar.gz"
      sha256 "1dd2fd1c88537e2e2405a3436d09cc03fd58691d3c48c5c1858632e4244d5b29"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.0/twig-macos-x86_64.tar.gz"
      sha256 "45cfc8699cc31c0e3cf3cb60714bd1e4ba13857019fb358cdf992d6ed3592640"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.0/twig-linux-aarch64.tar.gz"
      sha256 "3c4deee06936a095656e639d2fffc1bc597d80e4d7200f4e6dcd038580ee435f"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.0/twig-linux-x86_64.tar.gz"
      sha256 "82ca9772890cb395e2452df812173454afb3224c0d982b4e952a13a380486e44"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
