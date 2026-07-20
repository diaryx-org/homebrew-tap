class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "2.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.3.0/twig-macos-arm64.tar.gz"
      sha256 "70157064c642b16e7fb78bbef99d1fcecf4a52d09b63cd72699a68792dc16ae5"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.3.0/twig-macos-x86_64.tar.gz"
      sha256 "9eb1c291d72c6ea1161f99a574081d7a28905cc3195789aa9129fffcdfb3ce6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.3.0/twig-linux-aarch64.tar.gz"
      sha256 "b9d151af0cec691b634c2cf79a8e694e21777811811d06a7663718226f2b584d"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.3.0/twig-linux-x86_64.tar.gz"
      sha256 "336d7b208bebb716bcbddf96ee543cabe7d3d1ef7bbe6334fa2182ae4561dd72"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
