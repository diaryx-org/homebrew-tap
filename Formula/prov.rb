class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.9.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.1/prov-macos-arm64.tar.gz"
      sha256 "bc6495722d6d39813c8053c068e63c31536821dab98583af3cdb9741a8bf2326"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.1/prov-macos-x86_64.tar.gz"
      sha256 "29aeaa306227ec307d412ec4568693485f4ee50b90e812b22f256002fa8cc969"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.1/prov-linux-aarch64.tar.gz"
      sha256 "152ae15c01f1e84f66e495ad6e232756a3246362ea94f33ca3a066bb450ac012"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.1/prov-linux-x86_64.tar.gz"
      sha256 "ecddd2ee46843d9b8c71cdf86085ae9aa67dca46c519273e2f2a68ae7cd0a682"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
