class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "7.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v7.0.0/fig-macos-arm64.tar.gz"
      sha256 "b2e3affd25101eb7e920c3d6f8a14504378994ede2b82f03e4bd1c6ba72ff950"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v7.0.0/fig-macos-x86_64.tar.gz"
      sha256 "2d375723925f12c3978ca93c18140c6569f30856963c4a9b5cc8fc7f5accc928"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v7.0.0/fig-linux-aarch64.tar.gz"
      sha256 "ff4e224a5750958ac6fe7fa2aa6ec75f2c95f17f6b6639a013e1db67874c7e9d"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v7.0.0/fig-linux-x86_64.tar.gz"
      sha256 "37b7fdd747a1abe27e235fe9f477cc715251ca9080b9953ad618194860d6b9d0"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
