class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.0.0/twig-macos-arm64.tar.gz"
      sha256 "b33245194ecef6b207ec60d579b0fe03296896da4b4b19bf7eb9d656d32c4aed"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.0.0/twig-macos-x86_64.tar.gz"
      sha256 "1dffcea92e403d656328319b390f386f6792b43e4c12511b58823e788378febf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.0.0/twig-linux-aarch64.tar.gz"
      sha256 "a873f2487564e612365f950eef8f792ae1e847b01fe44b16c1e8f92fc611b246"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.0.0/twig-linux-x86_64.tar.gz"
      sha256 "66030dff67de3378ed1cef19abbea386610cead3caf41cc4ebb70f912e9e97ca"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
