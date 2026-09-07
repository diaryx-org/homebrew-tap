class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.3.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.2/twig-macos-arm64.tar.gz"
      sha256 "555744a14203ded3c6890ce0895d8991699f787b92c66a1ade0b3840aec4a8ca"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.2/twig-macos-x86_64.tar.gz"
      sha256 "a01ae99ea845223aa275188c8ad910bfcc2e00bda8fa56ebd42e6603c4a52ca9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.2/twig-linux-aarch64.tar.gz"
      sha256 "3b438be8a46a27ecb40f3371b89e04de5741f78c1b765e7f79de7989a49bc209"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.2/twig-linux-x86_64.tar.gz"
      sha256 "8268ca59043d72fb368eaed3bcb83f9d926ac6dd0d55c2d510e78c5a8eae0db5"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
