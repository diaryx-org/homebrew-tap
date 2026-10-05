class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "4.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v4.1.0/twig-macos-arm64.tar.gz"
      sha256 "ac54dffe2adda8d098314df15bdc4ed926efea7061bf112bc48061fb9a5f0d10"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v4.1.0/twig-macos-x86_64.tar.gz"
      sha256 "de09fadb05c7f3e71b1a8fa7569dc22e32818a4df15348a53edf8137b528a1e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v4.1.0/twig-linux-aarch64.tar.gz"
      sha256 "64ecca9aeca75146e0d1cd6be4f1237e890fdee86ae8ea766fde3ea29152f00a"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v4.1.0/twig-linux-x86_64.tar.gz"
      sha256 "7374c40a35b8f84420a7a8b34e1d3044185c0d2c8a0a99f1d1d2a2b0386f98b7"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
