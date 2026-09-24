class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.6"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.6/leaf-macos-arm64.tar.gz"
      sha256 "6824eaf499761f79cfa7c3f9f0502bd95edd6f803b01ba0aaee8aa5e905e37c4"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.6/leaf-macos-x86_64.tar.gz"
      sha256 "2f61f8fe3b7666be0841d377ea05e12332b770556015706cef168f73c36441f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.6/leaf-linux-aarch64.tar.gz"
      sha256 "0ca8a5ed7a30303bf96be1da0bc3a5e786cfdfab797266a6a75d8776d59f5d9d"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.6/leaf-linux-x86_64.tar.gz"
      sha256 "6fd41385f75097c15ce153792a82302bd2c6e9b9beface08bb281cec62be4512"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
