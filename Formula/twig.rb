class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "7.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v7.1.0/twig-macos-arm64.tar.gz"
      sha256 "4ecb4a9d3006bf4e53b4124e5558042a977d7af07ae2e99cb7060ad957eae21d"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v7.1.0/twig-macos-x86_64.tar.gz"
      sha256 "0acfa1fda9b0e4fea1fa4e02d38c1f56014f159e301e400232e042aee7c27e15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v7.1.0/twig-linux-aarch64.tar.gz"
      sha256 "6f082f8109b4a47b145845041d72403926e79f42ead5a46faa6c722c47c84f2c"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v7.1.0/twig-linux-x86_64.tar.gz"
      sha256 "0755cc138d15a987e87e7e2a179997b8d522755ba08810e3277ba3495a354ac8"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
