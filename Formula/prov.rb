class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.13.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.13.0/prov-macos-arm64.tar.gz"
      sha256 "f69b01a98fa1de44d4c7aa9f92f8f36e0d9cbfc2fb9bccc7ceb490a1be355539"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.13.0/prov-macos-x86_64.tar.gz"
      sha256 "107c83ebbc9520c559e5b5e4f9429074e597f00bc4a300b149530466edd8e1c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.13.0/prov-linux-aarch64.tar.gz"
      sha256 "6fca4668a2500448af594485d27efba9a0ae019be2339cc42d7c0c0ee8f4a744"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.13.0/prov-linux-x86_64.tar.gz"
      sha256 "39969de550d64d307873b37f2f6863e917b9337aa6b2d50fd6e19949e75a9f03"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
