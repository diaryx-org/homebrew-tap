class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.20"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.20/leaf-macos-arm64.tar.gz"
      sha256 "f834b51d16482c74a81570ec2d79246fad3be7030e83cf4c7f08848af0525412"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.20/leaf-macos-x86_64.tar.gz"
      sha256 "35f511bf521564961ca7788afc199401818d03a1d8320b587dcfd3a5abe8699f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.20/leaf-linux-aarch64.tar.gz"
      sha256 "fadbd6abb539064a783e021c5af4994915aa3bb0b5f4cbfa2bc88a607b3c308b"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.20/leaf-linux-x86_64.tar.gz"
      sha256 "123c0dea70b8c76a0c436c722c006ce5ba4b080e7b40303bf7e779711f2bb695"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
