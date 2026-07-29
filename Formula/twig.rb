class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "2.6.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.6.0/twig-macos-arm64.tar.gz"
      sha256 "24ba1f42a02fa02ce040ba3c9113c0a22ee96f7f9c439e7c79d9239ac84650b1"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.6.0/twig-macos-x86_64.tar.gz"
      sha256 "dcb2cf30ee3adfeb72c7c6100427bfc83889ddc4aa4b06f0d7b7598135cfde14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.6.0/twig-linux-aarch64.tar.gz"
      sha256 "7d6545a87a998e5d648601c595d6cb0e96db7e5e559009650f09bcf4d2065940"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.6.0/twig-linux-x86_64.tar.gz"
      sha256 "ae9c00eefb67f375717bf260062e7e52f09cb9e0b2d7052cb91cfcfb98368110"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
