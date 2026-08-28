class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.10.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.10.0/prov-macos-arm64.tar.gz"
      sha256 "f113940c4ff74b1c8d8af55fa523faa2217a9c1a967db67c809d4b791dabee03"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.10.0/prov-macos-x86_64.tar.gz"
      sha256 "6a4b000e60e84ffcc0099da12255e3f94b3ad52c8b34411adf7703c844cb7ac8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.10.0/prov-linux-aarch64.tar.gz"
      sha256 "09ccaaf83b9778d2cb9f8b9401e0307545926fa96af85c58314f7e99ccef6251"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.10.0/prov-linux-x86_64.tar.gz"
      sha256 "d57daa01f858dd0ebf9910fea0efcd5f2a8d99942b9857039768b880775ecf5b"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
