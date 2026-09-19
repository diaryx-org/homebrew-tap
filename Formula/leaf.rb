class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.2.0/leaf-macos-arm64.tar.gz"
      sha256 "42d647bd16c371ff9813b062153beabe5eb73560ac0d2c21b6f8916e32288f57"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.2.0/leaf-macos-x86_64.tar.gz"
      sha256 "ca74b40d65afddb3ab38f2d47f4c06e0b8a4f27442d1a845e80f80d9c01c93d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.2.0/leaf-linux-aarch64.tar.gz"
      sha256 "23bc58a33a96989e29c28900d4f2e784a9e31f34bd06212922bf61a1e1208844"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.2.0/leaf-linux-x86_64.tar.gz"
      sha256 "202fc534403d9d310d5eacc131193861cec7ca9fcf924c3def3af437d8057ae0"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
