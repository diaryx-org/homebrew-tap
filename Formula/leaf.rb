class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.7"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.7/leaf-macos-arm64.tar.gz"
      sha256 "8c69a019159c97a201adcfc9d2a306c802c30700f8f4ccbb36ef15d54693093d"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.7/leaf-macos-x86_64.tar.gz"
      sha256 "290be276f04edb2671dec2e9e657c5902fcdd563318385136e611b29801da35e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.7/leaf-linux-aarch64.tar.gz"
      sha256 "1c003a6d6fc7ffff5fffe0b64b9119f9765613ab407876cfe5d263ebb868d43b"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.7/leaf-linux-x86_64.tar.gz"
      sha256 "46e58a2084a88c86a73386ded55163f80dbc98d154a1a1252863e59f55c7a92d"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
