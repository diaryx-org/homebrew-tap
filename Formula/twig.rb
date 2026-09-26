class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.11.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.11.1/twig-macos-arm64.tar.gz"
      sha256 "56863a0a09f5d79cd7881f2c3bd9a42b5f6e3762f26664aa9b880de6096e519a"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.11.1/twig-macos-x86_64.tar.gz"
      sha256 "82adbaaa109de841ca63751206ef6d9fa5cfa68283d659988529e5eeb2033787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.11.1/twig-linux-aarch64.tar.gz"
      sha256 "74e307fb846df6443c689b16188ab09f7d8f85fe431b06e88eebfdb836d70a19"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.11.1/twig-linux-x86_64.tar.gz"
      sha256 "ee0006b4bbdd2bfcd4f574cded35bf56cd6255b7c2c3c300f08c40bcbc4247b0"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
