class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.12"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.12/leaf-macos-arm64.tar.gz"
      sha256 "747fd34e17b4ea496a712473862385aa49fa384d734357ddfc41f7ddf4c4a43e"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.12/leaf-macos-x86_64.tar.gz"
      sha256 "393c60f9ffa1bc6f7e8fd18d445ed0eba37dc7c861acf692f31fe55864799d78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.12/leaf-linux-aarch64.tar.gz"
      sha256 "06b89ba1f226c710b72592ff026d24630e110219ae5518edf9cb0fd9bdb54ebc"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.12/leaf-linux-x86_64.tar.gz"
      sha256 "63b7c50753f028e8987808efee80ba37cb7c96b91e06a884018e97f6ead20336"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
