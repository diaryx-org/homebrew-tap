class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.15.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.0/prov-macos-arm64.tar.gz"
      sha256 "0e71903ef527f3377a6bc915e3adfb2e5629a0cc99b7da819acd9df4be344dd3"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.0/prov-macos-x86_64.tar.gz"
      sha256 "fabc547fa7d0e16d8ced325dc499d7e39ead2ab542aad007a3cd81a2ecbfa91e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.0/prov-linux-aarch64.tar.gz"
      sha256 "3ebf4ceef891dfb66eaf65321f6110b78311ac8a23219fd7d9869d68af88a1c1"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.0/prov-linux-x86_64.tar.gz"
      sha256 "55d1538ead87986ce1a353b7aec1243a1418df1d2fd8bbe24ef2d7d300f13508"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
