class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.11.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.11.0/prov-macos-arm64.tar.gz"
      sha256 "83599ac7896bd15e6df4cdb236e24de9724ba0e797aee082df977c380c014a26"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.11.0/prov-macos-x86_64.tar.gz"
      sha256 "2f591bddaaf1e8678e1d5167d7841a22c2cddd00b0874adbf47ca44fea9b5a4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.11.0/prov-linux-aarch64.tar.gz"
      sha256 "6497d96c42c6cc8859d1524b2bc952501fe49b0d9e752b897639aec96c71493d"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.11.0/prov-linux-x86_64.tar.gz"
      sha256 "0eed3583406058f97981a9a1f70b6b3ee19326364899efd01713741aadc1953f"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
