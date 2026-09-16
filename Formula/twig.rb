class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.4.0/twig-macos-arm64.tar.gz"
      sha256 "136c04e2ec6422b8650cde412268bb8c652b3564e1ff4fbbd709ded55c86e1ff"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.4.0/twig-macos-x86_64.tar.gz"
      sha256 "2edef70dfcbb588f37e40f3049559fa04ce0ff9167e5801154cbfb80e3f69ced"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.4.0/twig-linux-aarch64.tar.gz"
      sha256 "ee8ac8b3612901991582d5fe257b3a95ea37ec9575c66ee848e02086c52b1324"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.4.0/twig-linux-x86_64.tar.gz"
      sha256 "1b2301098229163250bd190643bfcc039b5bdb9f425ca8b037b261d868377862"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
