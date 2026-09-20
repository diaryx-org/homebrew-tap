class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.3.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.3.1/leaf-macos-arm64.tar.gz"
      sha256 "29aae080941c1c1b5104b3141582d56973f6971cdda2ccc29be3d6cf413f877a"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.3.1/leaf-macos-x86_64.tar.gz"
      sha256 "1d432d2bca371a5abc419dde27db554ef62db38f70a6e383dcb0a25aa37deb2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.3.1/leaf-linux-aarch64.tar.gz"
      sha256 "c631a03dc3cb5a01c6b8982733b3c1b18563a24cdce298de3373e2b501a36c31"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.3.1/leaf-linux-x86_64.tar.gz"
      sha256 "a27aa3c8c6b08bdc4879b3feff904a687722406bba0f9cc3fabc1e781abd51e7"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
