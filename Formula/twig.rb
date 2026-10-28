class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "7.0.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v7.0.1/twig-macos-arm64.tar.gz"
      sha256 "e4f7857ad77a84fd667dc6faa254e9981578c6f0844c63a0c4dc9802bf900a20"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v7.0.1/twig-macos-x86_64.tar.gz"
      sha256 "151485243125d630ec69652cb23761ebc314c648b3e2d6a5b41c649bffcb8cce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v7.0.1/twig-linux-aarch64.tar.gz"
      sha256 "c5a1aede1c810a21024332861809f076a60b5cc2e8288db3503bb40deeac0784"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v7.0.1/twig-linux-x86_64.tar.gz"
      sha256 "7e7b90f802cb159b3bfa5349c56ae4b0d03d81bde195e2a918a840b0559a8b04"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
