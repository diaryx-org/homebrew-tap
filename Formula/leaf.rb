class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.1/leaf-macos-arm64.tar.gz"
      sha256 "e7ef3de22111c0972e7b49db6fcb52c73d197f29ac1851144e80d96be5cf6ad3"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.1/leaf-macos-x86_64.tar.gz"
      sha256 "1a0810497f764b1ad9763c89dd076353c29e14ba6f75fa36aa6d7bd9f5116742"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.1/leaf-linux-aarch64.tar.gz"
      sha256 "5bb6b587ea91795fd96ecb683268ae7ac26496e58ff069ad268befc18e577371"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.1/leaf-linux-x86_64.tar.gz"
      sha256 "3ac9b876360280787e2dfbc35a5fa6df696ea967568fe679de379855409f9404"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
