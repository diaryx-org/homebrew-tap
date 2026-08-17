class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.2.0/twig-macos-arm64.tar.gz"
      sha256 "dac343beab2b440682a24caa85e4d352924e270f62a48605ad0c4f57ed536fda"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.2.0/twig-macos-x86_64.tar.gz"
      sha256 "f611438c318ce9720fe7074e9d627f8869e874a71dc7bf3002537275faf845a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.2.0/twig-linux-aarch64.tar.gz"
      sha256 "becd6921bdf5aa3a58de5248fea6761bfbfce0d15cd0aa2efcce0ad6443ba0f6"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.2.0/twig-linux-x86_64.tar.gz"
      sha256 "bdf310a931baade2eb948049f2c2dc070c979d0a4d99e74d2149ef985f502e0f"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
