class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.15"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.15/leaf-macos-arm64.tar.gz"
      sha256 "6d1ba4c083c48562a6023157ebe41fe2aae06ea84f5fbe6c5d40fde768fb5027"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.15/leaf-macos-x86_64.tar.gz"
      sha256 "2ef643ed261dc018295e2d6eca78cae89f4ce3bc08e87f61b4c7356ef3c54a92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.15/leaf-linux-aarch64.tar.gz"
      sha256 "506b5460fa5fce1e2bcdf8fd09067e1f8c8704a477ed39e03ab12fdeba3ec106"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.15/leaf-linux-x86_64.tar.gz"
      sha256 "255577acbdfae8755cce2ff612f61482b46b3a4fc5a4615f89776201bc8025cf"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
