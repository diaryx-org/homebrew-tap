class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "2.7.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.0/twig-macos-arm64.tar.gz"
      sha256 "007db68436e3467b8b4b44f7465c696d35116125e8148f0cc3fb4de12a65b31d"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.0/twig-macos-x86_64.tar.gz"
      sha256 "c50e77493482e1a993708f60eab4c1ccb3f196f39f316cdd48bb9d4ef4555236"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.0/twig-linux-aarch64.tar.gz"
      sha256 "8bcff5fa080c0b39a683d15b0818dcd2bf64f3d052b5727b676472d97b663324"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.0/twig-linux-x86_64.tar.gz"
      sha256 "589efe68340a25c257ed900b738045c5e9c5f76ffcf7f63003d9a51498298405"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
