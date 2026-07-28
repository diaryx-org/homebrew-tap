class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "2.5.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.5.1/twig-macos-arm64.tar.gz"
      sha256 "9b3b8854c93f7a0c504d68e46678aa8ec6d05852e270379740e0aba42bc59426"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.5.1/twig-macos-x86_64.tar.gz"
      sha256 "b16285abe51e9123b0daaaf4d57bb393efe1be0a5dd268959c923353a58ea342"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.5.1/twig-linux-aarch64.tar.gz"
      sha256 "49ab600e40be6286c32cf356d9f4c2b9f3d934445840d8eb20a28f816135e9e2"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.5.1/twig-linux-x86_64.tar.gz"
      sha256 "ac7df9e634ff8016bcd0a09d59472e2c20f50699ed0180defd0590bd08137a0f"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
