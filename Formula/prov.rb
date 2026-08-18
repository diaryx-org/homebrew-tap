class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.6.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.1/prov-macos-arm64.tar.gz"
      sha256 "bddf88442855a57a0805bd06f59124d9e89089d44dd149b7a031506022ca3474"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.1/prov-macos-x86_64.tar.gz"
      sha256 "cc3bafb3136f23cc12cec86ddfb927d977909793487aa60d69e15ae83063e31d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.1/prov-linux-aarch64.tar.gz"
      sha256 "77a0f48c377a6cd5c1285e5da7689d78149341312d4ab3673321e54982cc3b6c"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.1/prov-linux-x86_64.tar.gz"
      sha256 "c049de544ba4d641e7f518a37ce4a78aaefd6bed7d18c1a45acb667db6d88ee6"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
