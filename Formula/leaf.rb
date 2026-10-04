class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.5.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.5.1/leaf-macos-arm64.tar.gz"
      sha256 "d29a318aeb4caf4a244af546836f365ac467b39d8b44e01d989e15acde9436a8"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.5.1/leaf-macos-x86_64.tar.gz"
      sha256 "983538d7933bfd2063cdf02a280683e641ce2ac25eb5c883640849e3ff16a841"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.5.1/leaf-linux-aarch64.tar.gz"
      sha256 "3aa8c3f0e806771e4fb7c7d4b9fef32e1b4dd0d5fae2eb1e2d2d002e5b1093cd"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.5.1/leaf-linux-x86_64.tar.gz"
      sha256 "63e5872c4358dff3ece50cede0a77aaa785e39e15e172ad52d29d35382a1e364"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
