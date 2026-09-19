class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.2.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.2.1/leaf-macos-arm64.tar.gz"
      sha256 "7b3f7265047999a50b8a2d37b0616631630dc60f438a5cdab0c046d79b900eba"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.2.1/leaf-macos-x86_64.tar.gz"
      sha256 "dbdd5a46a2edeaf4014edcef3986c88c8eaf109a62d869c92e9eb4b8d8eda9ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.2.1/leaf-linux-aarch64.tar.gz"
      sha256 "3d31cf100f506656bf7c7bf8d8322d3265ad7205cef63ae0a835db86aa5ac0ac"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.2.1/leaf-linux-x86_64.tar.gz"
      sha256 "39522764481ecc1df6d15f3808e920d8c0dbe9ef64596d77d7e6f35feb1136ed"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
