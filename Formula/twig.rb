class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.2.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.2.1/twig-macos-arm64.tar.gz"
      sha256 "c066617588a8632d6dfad3929cd15ef0071cf598cdaf9c4ce3eba6e663516314"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.2.1/twig-macos-x86_64.tar.gz"
      sha256 "3dac2f9ab242557d7bc284af98984f101a94d9425b65847e8feb32bd8ea5490f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.2.1/twig-linux-aarch64.tar.gz"
      sha256 "d61f1f97a6dd140c5940bde1cc2d5ced1d804401748637272e8be61afcc8f2bf"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.2.1/twig-linux-x86_64.tar.gz"
      sha256 "8c4e3147779367e16e75cbfc8d88f66c23b862eabb34ab2d93f23cc124d881a8"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
