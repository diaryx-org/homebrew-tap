class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.9.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.2/prov-macos-arm64.tar.gz"
      sha256 "26633eeb46ff53a518683a5231ba51e63d8ae35a635787abc4f7a3a78e6ca380"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.2/prov-macos-x86_64.tar.gz"
      sha256 "50d79f38426ae8f6479fe75879d7ad2e39e86860b7ed541b4ebe27859776d18e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.2/prov-linux-aarch64.tar.gz"
      sha256 "5c2385c400d2fca56f96b6e45979943581509561508a07e6714213413e8825df"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.2/prov-linux-x86_64.tar.gz"
      sha256 "6086fc3d33ee32e69a6f649c0063d805ea538ad17129fdc972431a132d3c1545"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
