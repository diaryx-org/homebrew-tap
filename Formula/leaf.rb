class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.3/leaf-macos-arm64.tar.gz"
      sha256 "74bec01e1a38e701c526b037df0e158292dc238d9696a13e2c7f6958d8ba144a"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.3/leaf-macos-x86_64.tar.gz"
      sha256 "d74eec85ed4f0e445ee1d95fa83f82cea360f3e1979d0a2aea1fe6e54d7cc383"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.3/leaf-linux-aarch64.tar.gz"
      sha256 "d32cb46f024d32ff97f8e036eda2eb15e167344141a133839865ae233b829da1"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.3/leaf-linux-x86_64.tar.gz"
      sha256 "254ea4394120c2b5f0b30d7fa9cdde78a3625cac07c55e257974bac126461158"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
