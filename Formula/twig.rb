class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "2.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.4.0/twig-macos-arm64.tar.gz"
      sha256 "daff3626b9e2820144939677501efec87d25b0639a0d69c7fc67da179138f2db"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.4.0/twig-macos-x86_64.tar.gz"
      sha256 "d207625116815313388a0158824fb4be4566948e1743dd65c4df0760e3812e6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.4.0/twig-linux-aarch64.tar.gz"
      sha256 "6ade75c5a08e9e60054f9049e23c49f0a13c89e78c176bcfcb9d2a4334081c3a"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.4.0/twig-linux-x86_64.tar.gz"
      sha256 "80c63bdf028ede215f95f91655daf07cdf089a56f54fa35d0b5b598a7edd3ecf"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
