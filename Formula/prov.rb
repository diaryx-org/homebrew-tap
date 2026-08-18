class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.6.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.2/prov-macos-arm64.tar.gz"
      sha256 "d39ffadde1805d4c64f2bae5427909d08cb9c3fc94df5b0ea8f50d1a81b7247d"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.2/prov-macos-x86_64.tar.gz"
      sha256 "b87f29566055e4960e1c4e8a58058e8d2ffe56e560650c98a8b2da0c790e5be4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.2/prov-linux-aarch64.tar.gz"
      sha256 "d2aca9a7babf5e5fb5704dfeccd702fa7a64fe6a34625560e4f9b248d2990f50"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.2/prov-linux-x86_64.tar.gz"
      sha256 "b99e40e5d118b65a527ee64ee4f48d8e18ff28a6ea1cd86fcb28138a84f9fcf6"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
