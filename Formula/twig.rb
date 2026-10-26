class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "7.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v7.0.0/twig-macos-arm64.tar.gz"
      sha256 "29d2b1a34186fc4e6197f1f23d140214731b7f966f265dcf27309191882af9f7"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v7.0.0/twig-macos-x86_64.tar.gz"
      sha256 "21ec0b55cc3fdacf5d9296bb8d06d45339c01bee193f3e786dba5484014b6c26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v7.0.0/twig-linux-aarch64.tar.gz"
      sha256 "25937a265c9cfc9932961a6c5ddce00936926b44827e18414b977192402de04d"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v7.0.0/twig-linux-x86_64.tar.gz"
      sha256 "ca30b511f1313f981ff72ab9aa84eaf983a906d5cfac09525e099f72064d00fd"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
