class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.5"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.5/leaf-macos-arm64.tar.gz"
      sha256 "67ee83701bccc0c273293c6170f36b53a02fc14f3c95fc6a27f89cd7e52e85fc"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.5/leaf-macos-x86_64.tar.gz"
      sha256 "c4da427c8c7ccaca45a3254083b207735188c9f6182a581bd5e57d13714ef1a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.5/leaf-linux-aarch64.tar.gz"
      sha256 "cf06771b26331c67c888ae129f01c737694916b6c9614e74f41bb91d2ddceffb"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.5/leaf-linux-x86_64.tar.gz"
      sha256 "b91425ba09584fbd8c7f8ef42834d117c8babbfb4c2743052fc7a0b99ee623fb"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
