class Flower < Formula
  desc "Structural terminal editor for JSON, YAML, TOML, ZON, and fig config"
  homepage "https://github.com/diaryx-org/flower"
  version "0.6.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.4/flower-macos-arm64.tar.gz"
      sha256 "a452be788f6c6db1aa95b2e6cee7716fc2bc8be355dd3487f2536c661e418e73"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.4/flower-macos-x86_64.tar.gz"
      sha256 "5aa4e40b8235dce2d5509639150c2fb8d6732a6ca422c44a04e175bb48025cc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.4/flower-linux-aarch64.tar.gz"
      sha256 "2207609586a2acb9574e4b148d1fa08c670108f459798e3ecacc5027677d1d9f"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.4/flower-linux-x86_64.tar.gz"
      sha256 "7d52117fd78eab9bef9bee6ab937a319302bd7bbe0c8b8d8e9c747dd91bd5d69"
    end
  end

  def install
    bin.install "flower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flower --version")
  end
end
