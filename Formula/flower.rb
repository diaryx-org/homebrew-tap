class Flower < Formula
  desc "Structural terminal editor for JSON, YAML, TOML, ZON, and fig config"
  homepage "https://github.com/diaryx-org/flower"
  version "0.6.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.0/flower-macos-arm64.tar.gz"
      sha256 "f6bb04d444732b25f02c259aa0333502c318fee5d066c20e28ee742d4fd4b458"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.0/flower-macos-x86_64.tar.gz"
      sha256 "111981d08002cca688c6411aa65693b6fe773ff49dbd8e601ff08e709c43018b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.0/flower-linux-aarch64.tar.gz"
      sha256 "5f4ee6f7c22dbe5c052bd479cac2309d3fe67016832e047f7bfe7412e845a3af"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.0/flower-linux-x86_64.tar.gz"
      sha256 "a36a0ba34dbbe9b91d8013ff87a14e0cccc4a29c1db722a577adc433dda92df3"
    end
  end

  def install
    bin.install "flower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flower --version")
  end
end
