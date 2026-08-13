class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "2.8.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.8.0/twig-macos-arm64.tar.gz"
      sha256 "db6128277f6bdbb593c37d02a823509685630544a970d81184e0cc848a434ddf"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.8.0/twig-macos-x86_64.tar.gz"
      sha256 "77cd18aff99d35eccd4668fb17bb681b40bb42cfc5407021be6a09dcb91e9db6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.8.0/twig-linux-aarch64.tar.gz"
      sha256 "c05acd3766f5acbcbe4d80a0bc13001507c73fb43e4eb5877535b5b61dff3e7c"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.8.0/twig-linux-x86_64.tar.gz"
      sha256 "8b5633fe4cb954fda1cec8fca4f797662508a30517ee6a5d2410e45d764ad381"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
