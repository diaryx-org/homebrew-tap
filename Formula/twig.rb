class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.10.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.10.0/twig-macos-arm64.tar.gz"
      sha256 "e83b552c73898170c069fa6dbf72372b887958c39fa6cbff1fe034abc7ce18c2"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.10.0/twig-macos-x86_64.tar.gz"
      sha256 "e83218e60adbef6ec33132fbd1b5edc752e906b9a5a84c8e3519563f3eb7be37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.10.0/twig-linux-aarch64.tar.gz"
      sha256 "a931069b78e5f094ff4b5e0029532eec8f97ea5e1cd1d2aff782604019943a97"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.10.0/twig-linux-x86_64.tar.gz"
      sha256 "9c98eefe5a4ccc8e57e34fa23db337dbdb38ffb43723b9b415474eb2fb8536c2"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
