class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.17.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.17.0/prov-macos-arm64.tar.gz"
      sha256 "3ab28dc6c7d937b49aca42837a93d6494701f99ba928d39f585b8b0b02a88ce0"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.17.0/prov-macos-x86_64.tar.gz"
      sha256 "79c5f109fde33c896cf4ade19f8f405d6ac0f9772d9508eeb2ccfc5fe4a60f60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.17.0/prov-linux-aarch64.tar.gz"
      sha256 "83dced3528c4f0c2337be14332366e01e83780c61ad6252182c66c35719583a5"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.17.0/prov-linux-x86_64.tar.gz"
      sha256 "0e6d3a86be16adcf3f01766a17949efce6b0a71c8c025da286be9ab5a697fff8"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
