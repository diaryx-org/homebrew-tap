class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.8.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.8.0/twig-macos-arm64.tar.gz"
      sha256 "c2b505f0f96d331f70443adb974dc8307740b18e799b1de9bf07c4f142e053f2"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.8.0/twig-macos-x86_64.tar.gz"
      sha256 "0c722ce4ebe4e37425587a7af9de79ba0d0900531dd5fef56c73461df85f1623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.8.0/twig-linux-aarch64.tar.gz"
      sha256 "e34dd12841772bf043a15f0b4bf7150a10b45fc374ae242f6f2ef3f44edc205c"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.8.0/twig-linux-x86_64.tar.gz"
      sha256 "ea4c501246d7a5793690b00fdbb3266a6609cdc04f01a9f27623eab12f8a90e1"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
