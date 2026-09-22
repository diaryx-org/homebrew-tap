class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.9.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.1/twig-macos-arm64.tar.gz"
      sha256 "23de139b52018c936dc05f3483f785946fb48c6aa2dc320250a814409f9c3650"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.1/twig-macos-x86_64.tar.gz"
      sha256 "ba501eecd36311a65eca6b210120464555038a9203072b3fe9f15b551e80fe8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.1/twig-linux-aarch64.tar.gz"
      sha256 "015afea0c1ffea5e2a33ff8143f33f37f1d82597de964a1816a2824a850ac10a"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.1/twig-linux-x86_64.tar.gz"
      sha256 "8510e9a3c861376687f45ddc568a9b3d98016c7f15bc1c754a37684e33245611"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
