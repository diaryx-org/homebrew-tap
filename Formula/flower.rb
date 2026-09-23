class Flower < Formula
  desc "Structural terminal editor for JSON, YAML, TOML, ZON, and fig config"
  homepage "https://github.com/diaryx-org/flower"
  version "0.6.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.1/flower-macos-arm64.tar.gz"
      sha256 "ded1407e5bd6e3bb7354038503145757a615ad9892700bbbd033079e40cd7913"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.1/flower-macos-x86_64.tar.gz"
      sha256 "3236f9c2c58039b5dce155e87baf1a4011cd98659cf42bff69ed348655c62b72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.1/flower-linux-aarch64.tar.gz"
      sha256 "1795ba5419ee26494f681003ece62d31f96a98f462dd1fbd49592e7850f7fb78"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.1/flower-linux-x86_64.tar.gz"
      sha256 "7aa39f0cae9835710666f51854b6075ed70e86465f3c10fa475af9d7c67ff279"
    end
  end

  def install
    bin.install "flower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flower --version")
  end
end
