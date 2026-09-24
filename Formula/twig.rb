class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.11.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.11.0/twig-macos-arm64.tar.gz"
      sha256 "2a0661a2b69c2ae0490afdc942b24ae1eceb5f348c22e218f9a03e242dc356a2"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.11.0/twig-macos-x86_64.tar.gz"
      sha256 "eca2442fb75980850d87e4ba3f2cd14f30a1cb13d6c8813e530ec6bb5f77d87c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.11.0/twig-linux-aarch64.tar.gz"
      sha256 "b53d8a386ade0ca06e3e8692dec1dec1b9905f5597c8c5d46de63e27f32492c3"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.11.0/twig-linux-x86_64.tar.gz"
      sha256 "2476a6948fdf151e8076dcb09b927d9270ae1ea725c41776c4fec55c9cd62f0a"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
