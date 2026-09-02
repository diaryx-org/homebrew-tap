class Flower < Formula
  desc "Structural terminal editor for JSON, YAML, TOML, ZON, and fig config"
  homepage "https://github.com/diaryx-org/flower"
  version "0.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.4.0/flower-macos-arm64.tar.gz"
      sha256 "5013b0a1bf2797f43fe16e2b4e5e48741b4489bd28518bd0ecdffe160491e7fb"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.4.0/flower-macos-x86_64.tar.gz"
      sha256 "646a8de138021dbe37c1f57d23906d3c7ba54257babfda518841aa79dbf80405"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.4.0/flower-linux-aarch64.tar.gz"
      sha256 "b7ed2d81125980378dab00d5f4aefe3c35cfc43196ccff8341d9e9f32a8bdc82"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.4.0/flower-linux-x86_64.tar.gz"
      sha256 "be88ec0d83c4c26139cbaec4008352901b1147248ab9ec0046830f5b03bb5d82"
    end
  end

  def install
    bin.install "flower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flower --version")
  end
end
