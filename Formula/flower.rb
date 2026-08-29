class Flower < Formula
  desc "Structural terminal editor for JSON, YAML, TOML, ZON, and fig config"
  homepage "https://github.com/diaryx-org/flower"
  version "0.3.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.3.2/flower-macos-arm64.tar.gz"
      sha256 "34e5204edcc1867fc6cecf5ec9c2328d8ce2a357c916639b8a8a26b1768a0056"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.3.2/flower-macos-x86_64.tar.gz"
      sha256 "4081aac939582d70d696d1d30dbb8f4592ee7ffd2434099f1cc45954f30b1dc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.3.2/flower-linux-aarch64.tar.gz"
      sha256 "1d3767f8de4612a08735a2f87c2ca32d7606114eead751d22bc95f508a810f56"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.3.2/flower-linux-x86_64.tar.gz"
      sha256 "07b3cfcabf485d3c747ec79281be401ecc288c2a677f5c182ccb83bcfb7c393e"
    end
  end

  def install
    bin.install "flower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flower --version")
  end
end
