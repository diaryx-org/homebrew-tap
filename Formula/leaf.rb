class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.8"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.8/leaf-macos-arm64.tar.gz"
      sha256 "6acb70976e1b19bd0bd4f5c56498687a1384c45b684243650777db7a1143bc86"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.8/leaf-macos-x86_64.tar.gz"
      sha256 "a8e27b6cd6a6ea6fa082b3d4d72f217240580c8bbccfeebc0fef8e3a2a86dbb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.8/leaf-linux-aarch64.tar.gz"
      sha256 "c6276f5ed9b4b1e04da4efe25a875aa4ccf1a6c413121d916eea5484615e40dd"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.8/leaf-linux-x86_64.tar.gz"
      sha256 "891a9660225d370bbe66bacb65af0dce5ad58555c8f0e30a3ac10808d27f96d0"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
