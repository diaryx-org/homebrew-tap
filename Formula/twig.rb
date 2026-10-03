class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "4.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v4.0.0/twig-macos-arm64.tar.gz"
      sha256 "10b9e141c751de8728f21e5a78acec0096f9cad1f9c61db9e05aa6c9a746347d"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v4.0.0/twig-macos-x86_64.tar.gz"
      sha256 "f6bf7b8b3bf494e77739b902210c4611da8e7b0e9c584daff28ed7f202ef1e77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v4.0.0/twig-linux-aarch64.tar.gz"
      sha256 "7cb62b70684db728a551d24724fdc26f3c672cba45d4d8ce976d7a5df7ae213b"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v4.0.0/twig-linux-x86_64.tar.gz"
      sha256 "a8f2fcd9b060e2d121308f7b0ab67f9d8d74e7affe3757a5b5e0b83648ed1888"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
