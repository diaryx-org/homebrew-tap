class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.5.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.1/twig-macos-arm64.tar.gz"
      sha256 "56d91e95cd149d8a3e0f1be56eed1cdf3b97fc21f1c3d1fa8106fdc49b648753"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.1/twig-macos-x86_64.tar.gz"
      sha256 "8d30148ead45f0ad6368e98059c7d6686e3c94738e471408b756b6d77349f015"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.1/twig-linux-aarch64.tar.gz"
      sha256 "2999b594322146c902dfcc57756cb283348ddc4984bc06e1c6163f2a1ee2b3fa"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.1/twig-linux-x86_64.tar.gz"
      sha256 "143a0183345b0d06003fe4b582f7005dfcf915476ea911e36b6b385d12fc0800"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
