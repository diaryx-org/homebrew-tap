class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.15.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.4/prov-macos-arm64.tar.gz"
      sha256 "18d14cf0e03647a458713bb00b61ae585b8e95077a69e5f215d549b0969f8e9c"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.4/prov-macos-x86_64.tar.gz"
      sha256 "d2ffc4bb03f2b5fada11486a3d1a545ce640508e1d93cae70a8bbf238b6021e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.4/prov-linux-aarch64.tar.gz"
      sha256 "fba7c10dc8e89731340b96f26bf18282c860534e0910bf2c583acca660cfade5"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.4/prov-linux-x86_64.tar.gz"
      sha256 "476f18694de9a357ccb1e1fb517eb2b36931184d5f16b41015b46cf6b7c6d4c3"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
