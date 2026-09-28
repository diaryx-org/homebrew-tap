class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.15.5"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.5/prov-macos-arm64.tar.gz"
      sha256 "843e699ea0f49ab6505551361b53608718cc6ebb9486ffe31cf0a4776d12a22f"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.5/prov-macos-x86_64.tar.gz"
      sha256 "9385737c7b6622ee00c7ff2426d183a09b2ec7b7470a1ef1e7811ce408e891d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.5/prov-linux-aarch64.tar.gz"
      sha256 "5d141e4b6e312d4f3c210891989f5777cd30f7a51cb0480b9b35d7b5d428e300"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.5/prov-linux-x86_64.tar.gz"
      sha256 "7c6be0b2e0ee0bcdb0b08df15cff572b08c1a0b98fd39d7d50b1ebd37e508bd9"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
