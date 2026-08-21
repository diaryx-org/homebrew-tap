class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.6.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.4/prov-macos-arm64.tar.gz"
      sha256 "71b2763e3df77be409fc6d63661bb8761489b934a86e8fb60eb0cbf47d1b0e32"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.4/prov-macos-x86_64.tar.gz"
      sha256 "4a8441d9e7a332ce4bcc474a53c3afc1db5f96d82dc894641746eb7d928f72e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.4/prov-linux-aarch64.tar.gz"
      sha256 "6e786ca79de524e45bf18f080f7263dc4346640650158321db125cceccc083e9"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.4/prov-linux-x86_64.tar.gz"
      sha256 "d25c2f739e949498b9ea1e443b673c2edfb41dab689eb22947a24022d6507528"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
