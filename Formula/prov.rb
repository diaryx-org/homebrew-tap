class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.3.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.2/prov-macos-arm64.tar.gz"
      sha256 "29f04acf585b169fabae633b31b39ce540e7d996d34799f7621951d51708d160"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.2/prov-macos-x86_64.tar.gz"
      sha256 "81d1cd6c27bc68395dbc5ec8736b89ab89b1b46622b4f40e49f05575560741ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.2/prov-linux-aarch64.tar.gz"
      sha256 "087f7952a34ff8bc9100c5d262c10db4d8d690c2228c433abf04bd60a09133bb"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.2/prov-linux-x86_64.tar.gz"
      sha256 "31bb1b160d1cd36aceea1dcfff43ee3c2795d831a0c147d69343a831754c0569"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
