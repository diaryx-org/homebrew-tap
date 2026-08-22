class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.7.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.7.0/prov-macos-arm64.tar.gz"
      sha256 "e1318ed13b77cddda517983dde37f0da52b2175f73ba30fd32a5aeac8f8ae8b5"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.7.0/prov-macos-x86_64.tar.gz"
      sha256 "e1f559cd566e9ea822c5744cbad777d7a82fbe689a78fbf41419dcd59357e302"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.7.0/prov-linux-aarch64.tar.gz"
      sha256 "8163cc20f59abfe8f4c3713417ea7c94371d4570b68b62d4e74cdf3ebfe80b28"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.7.0/prov-linux-x86_64.tar.gz"
      sha256 "d6fb56609f01d3ae8866be7e9002ee0aa107bf097c56c18c3e3ec8b9ddfc3476"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
