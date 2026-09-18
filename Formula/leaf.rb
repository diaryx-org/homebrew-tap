class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.21"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.21/leaf-macos-arm64.tar.gz"
      sha256 "8b90a829854c502b802f7c6c18208bf8e66ca4ff56db9150647b7efc119e8b08"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.21/leaf-macos-x86_64.tar.gz"
      sha256 "80708ec2c2fd933513cb829a6090ce65b7fd6e7afa730d15c399843c2852087d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.21/leaf-linux-aarch64.tar.gz"
      sha256 "aea732cc432d948c6285f21a889595bf3ec500a9d3697fb6a66b62d34b3eed5b"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.21/leaf-linux-x86_64.tar.gz"
      sha256 "eb0d690192b0905ea41e249e31b3d561ec02812bd6b4be9aeb616b4169895ef4"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
