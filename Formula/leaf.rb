class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.17"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.17/leaf-macos-arm64.tar.gz"
      sha256 "f9a8d3af6339f4ed8c7ee9e3953f0188ae76df97334d6b6ebd8088f25c32c803"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.17/leaf-macos-x86_64.tar.gz"
      sha256 "2dd41206e865c319a684e915b7bdb08793cd3d18698ffbd75db6764d3c061d40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.17/leaf-linux-aarch64.tar.gz"
      sha256 "adb902d81be88331ea1f50f75ec4a0119fdef550e6ada835e1f929c583e47d18"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.17/leaf-linux-x86_64.tar.gz"
      sha256 "34b633e71247d42a08279a2c40c066c2ee81be5b8a27804dfa7070ea1558ef27"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
