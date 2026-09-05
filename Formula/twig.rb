class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.0/twig-macos-arm64.tar.gz"
      sha256 "a9641f4d1b0fba5d1b1642817391f790628846ce8aa3f22b2329f8dd0d5f56fd"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.0/twig-macos-x86_64.tar.gz"
      sha256 "1a9e566f45eb6321c4ea397bbc4eb777a7724940d3b3326a13b2481e08080c07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.0/twig-linux-aarch64.tar.gz"
      sha256 "5d1281ad50340b7562c2b267d90a262db504fc0932fb491355cb8e6021e56ba7"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.0/twig-linux-x86_64.tar.gz"
      sha256 "f65eb05cbb9d7b0b9ea9269e22d48e7fadcf218d0583aae04cfacd842382563f"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
