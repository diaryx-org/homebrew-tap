class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.3.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.1/twig-macos-arm64.tar.gz"
      sha256 "b7694a5607c6b2744847c70f958f9116d13263eeb6a4276e8d32840500e8869a"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.1/twig-macos-x86_64.tar.gz"
      sha256 "d59044db9fc538decd7ee419f1d809deef4b99e57d285f3c1d775672c220542d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.1/twig-linux-aarch64.tar.gz"
      sha256 "ff8eca4b113ceeaa337f9b63b46523639b100b748bed7d19c61999db904503f2"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.1/twig-linux-x86_64.tar.gz"
      sha256 "ef344ffc900549cabc81a8f39790a30ffa9ea2f7cd0d13900ed4464fd94eba28"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
