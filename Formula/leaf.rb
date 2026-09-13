class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.11"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.11/leaf-macos-arm64.tar.gz"
      sha256 "595e48f7d6e19a1f7d15e3257ff57bbf7773eb72efe68e9e223b53d3badaa72e"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.11/leaf-macos-x86_64.tar.gz"
      sha256 "7089fa38026abc8d8c5ea0d1c74fd119fe4e604ef564a45c1c24b5d2a316544d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.11/leaf-linux-aarch64.tar.gz"
      sha256 "4031cff68c96885dc536fbda91a5a79dea5353b80d7b5c08d0e589ec23ddd208"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.11/leaf-linux-x86_64.tar.gz"
      sha256 "410f8ffef33f4b82f8d990d2ce5ee9f1630e1a1e1864c105b83735adbff34cd8"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
