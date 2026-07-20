class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.3.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.1/prov-macos-arm64.tar.gz"
      sha256 "e1c00a0ea2ab17c9695dcb522c90d05f43a3ea15bbead9eff86e5dd222d1c6ee"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.1/prov-macos-x86_64.tar.gz"
      sha256 "7adde747314aaa54b4238201583233527de9980aa44ca703bc02150602215fe2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.1/prov-linux-aarch64.tar.gz"
      sha256 "fe828fe07e362f5e27643b7933bb6ddd0aaca6b1c8562031cb57a91bf637497d"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.1/prov-linux-x86_64.tar.gz"
      sha256 "2daf0e96f402b675fcd70cb7d5186aabc284201c274e59241cf61d6538088b2a"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
