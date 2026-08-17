class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.1.0/twig-macos-arm64.tar.gz"
      sha256 "11dc6843eda6d8e7e40a6b260985c5d176015c530b395f11e22cb6092cfca017"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.1.0/twig-macos-x86_64.tar.gz"
      sha256 "9f4f90618bd4a35cc61a9e405abcaa20e3a977438efec09b50eeda07a9d1aac0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.1.0/twig-linux-aarch64.tar.gz"
      sha256 "582948445b2c3e884db18959d422726ae15ca5ce39d1edc1aea1e2644057187a"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.1.0/twig-linux-x86_64.tar.gz"
      sha256 "59803be1a115632f175dcb64916f3ab0b3c9a7574bc67cfdc71969139c1d2591"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
