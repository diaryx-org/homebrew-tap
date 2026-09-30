class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.12"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.12/leaf-macos-arm64.tar.gz"
      sha256 "87dc55ea7b85998d49ac979ca70a0c089043695febf1069f9017210bc2f97b85"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.12/leaf-macos-x86_64.tar.gz"
      sha256 "44c190df9eeac7884b532f2e1b3f3c180e59576762d9d65e78835dce9be5943a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.12/leaf-linux-aarch64.tar.gz"
      sha256 "b28f3b3e0e3b6b70b1369db3eaf28ce7f2744316c0ca331ec55bf1e74d3fcc63"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.12/leaf-linux-x86_64.tar.gz"
      sha256 "667df00081e9a5b8f117eafecbaaa421dc0b42c84e8a64c9502c5765b2945527"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
