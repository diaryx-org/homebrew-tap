class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "2.7.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.2/twig-macos-arm64.tar.gz"
      sha256 "c33dc9203d49442290a79a1f18f81606712605590a2928737a560a7f5b595165"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.2/twig-macos-x86_64.tar.gz"
      sha256 "2449413604da3e33081f226b32ca9649da3834f07a8d00c4fc3d30eae827802e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.2/twig-linux-aarch64.tar.gz"
      sha256 "059aae07d3d41cd5b466f1752ee36d5913ca4401be867b782b949a95741edf82"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.2/twig-linux-x86_64.tar.gz"
      sha256 "dc3672d631d4105889a1ceaec9bcffe60a82ad2f7fec7d9a1c0c346b5e2ac2bd"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
