class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.8.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.8.1/twig-macos-arm64.tar.gz"
      sha256 "1dc4d151d38c76f316536d9f411e9bb5f197d4e0b56fbdd319446d92dfcc8790"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.8.1/twig-macos-x86_64.tar.gz"
      sha256 "cc943653591d7228bd03b1f1db5d00a673e8268cd6930e08b9110d5eeeee5c6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.8.1/twig-linux-aarch64.tar.gz"
      sha256 "4be5a4a93f807a98f0f278caf3f1df5677092858451b39a9e5c679387d5e69db"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.8.1/twig-linux-x86_64.tar.gz"
      sha256 "57bf25d2223d0039450a8bcead5f88f55dd808f83d844515ac40673b82f72c7b"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
