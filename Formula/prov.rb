class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.16.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.16.0/prov-macos-arm64.tar.gz"
      sha256 "a381c5d25a5ace332f8e433365eecc116ca859c5dc778a7cbd0d9abb3dc4075b"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.16.0/prov-macos-x86_64.tar.gz"
      sha256 "31fb074dcc80cd094c525e5e727997072475f984833e44eee910cdcdd1b3b0be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.16.0/prov-linux-aarch64.tar.gz"
      sha256 "0196b3d03dc110fbcfa14839113b381e590fa64267350811544968bda0484394"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.16.0/prov-linux-x86_64.tar.gz"
      sha256 "f341114acbdacee05f99d9505a8ec849481ed1de0b1d0b9964d4b21102548336"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
