class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.5.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.0/twig-macos-arm64.tar.gz"
      sha256 "bed7f9313432b05be48fd775dd423bf8995ff5a8a8d54c1670c29f3638ad6217"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.0/twig-macos-x86_64.tar.gz"
      sha256 "24e4b1317ac44e3cc6e5bd45304eb8e9d0dd3c2645dbcc53c233e99da4014063"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.0/twig-linux-aarch64.tar.gz"
      sha256 "bed63ee1796f48ae364db5335ea7cbb5cb2bd23c13b9d0e4641b3f15449f7b8b"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.0/twig-linux-x86_64.tar.gz"
      sha256 "ef1da828c33be9ff004a3b2000bab7ea1f04802d117efd895206314fb1f3cc10"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
