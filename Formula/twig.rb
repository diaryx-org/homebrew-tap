class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "2.7.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.1/twig-macos-arm64.tar.gz"
      sha256 "755be15e6276afc4182304e2d1f639f99cc234042ced82f434ec18e5cfd1c733"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.1/twig-macos-x86_64.tar.gz"
      sha256 "b3ff05a479ea7ea07725430e058c66b3abded7bd63c52dec7b4bac92d2387a31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.1/twig-linux-aarch64.tar.gz"
      sha256 "6879f3c010954b6f3450cb87b19e47b447866ae1260a6111ef8c8919ed1db280"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v2.7.1/twig-linux-x86_64.tar.gz"
      sha256 "026a7f5e12ceab9920e92c58d885efc15ebe0ee7f813aab825d1732edbea3234"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
