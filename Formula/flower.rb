class Flower < Formula
  desc "Structural terminal editor for JSON, YAML, TOML, ZON, and fig config"
  homepage "https://github.com/diaryx-org/flower"
  version "0.6.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.2/flower-macos-arm64.tar.gz"
      sha256 "25ed3a24852a61994f9f614f38fefa2da00a5b03a8e780188b20ac79c426884e"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.2/flower-macos-x86_64.tar.gz"
      sha256 "36e27019c74310e0d19ae53a380aceaebcc453084e01cec1f0200605921fb4f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.2/flower-linux-aarch64.tar.gz"
      sha256 "5bd5990692a9b408545ff41d7d91c2cb2be401a68755a81fc98bd34657ae0713"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.2/flower-linux-x86_64.tar.gz"
      sha256 "1436b54ee660e30d3d780835d25ccdcaca7be1d2eeed5127932e725602effb1e"
    end
  end

  def install
    bin.install "flower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flower --version")
  end
end
