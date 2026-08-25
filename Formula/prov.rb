class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.8.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.8.0/prov-macos-arm64.tar.gz"
      sha256 "8b80912108bd2ab2f52e61dee4388dd37b8057c7e6d0d00f0d9b6f72b56ef7e5"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.8.0/prov-macos-x86_64.tar.gz"
      sha256 "75c23bf6f0be5beef37739ca2cd9360d74296822fd82c512ceec8eb17478b8fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.8.0/prov-linux-aarch64.tar.gz"
      sha256 "3691485f38273ace05dacb1d9f7ef3d47039a175692daad865cfd3993a6f12f4"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.8.0/prov-linux-x86_64.tar.gz"
      sha256 "2085c2451529d36225314536cb36eca915eec8ca84abef19bf3b054d11843e21"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
