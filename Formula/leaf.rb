class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.6"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.6/leaf-macos-arm64.tar.gz"
      sha256 "d4849b18254af12aea418e011e3fa2f6d8709c4d9f918c719e9a1a7d6baf7e6c"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.6/leaf-macos-x86_64.tar.gz"
      sha256 "28c318f3002f7f155758ef36939e98fbe0984c5d11ede4aa825cd1d4bd69eb4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.6/leaf-linux-aarch64.tar.gz"
      sha256 "133a89a4880471e73f6735146d400e8176384a7a8d56ea5faa9190c4b026e443"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.6/leaf-linux-x86_64.tar.gz"
      sha256 "5634720a64db9fe9234f7b850908b4ccab1aedeaaa2e0d648deeaef780a08edd"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
