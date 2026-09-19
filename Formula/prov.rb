class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.15.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.1/prov-macos-arm64.tar.gz"
      sha256 "58b6d71d38a4dc0a68578897ee539b1d37c4c7ce894a8705aef7e1d4eaa23449"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.1/prov-macos-x86_64.tar.gz"
      sha256 "86bda800d8b41ebc0c739f171b539a6ba46e2c5c4687655f607aafcd455cb8f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.1/prov-linux-aarch64.tar.gz"
      sha256 "5666f60d922f8e5e9f08030422e9583553da4ede8d0acfcee2337624acc14a3c"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.1/prov-linux-x86_64.tar.gz"
      sha256 "1ea0685add61339d99e385c94b46cab47bd202a1ed15ebe47451e2c709a40511"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
