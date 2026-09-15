class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.3.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.3/twig-macos-arm64.tar.gz"
      sha256 "90d06316d174634d97bc89b304113ee17df66bcc153e9ac02c9ca0c0e21ba062"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.3/twig-macos-x86_64.tar.gz"
      sha256 "df9aa17d2d3cd7943b3f941f9f07c258d24feac47590eab6c9b2e51977dc4e50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.3/twig-linux-aarch64.tar.gz"
      sha256 "b798df7b511096857fd424de4a7d5732ad9e96c09a7e3d29e201ea270ad8d222"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.3.3/twig-linux-x86_64.tar.gz"
      sha256 "08f37190d95e62df63a8110c70951e813c3a6c9919d0b22a9676e912eb39752e"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
