class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.9.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.0/prov-macos-arm64.tar.gz"
      sha256 "92a2b3e029e4bdc2fca5c9ea00141b55237d98c3e8761d02b1d63ad65f7bb9bd"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.0/prov-macos-x86_64.tar.gz"
      sha256 "35dd273f69cb6070afece739732eee0ed55cccf41c2567a9dc34281c743c9133"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.0/prov-linux-aarch64.tar.gz"
      sha256 "5551064090a0cc28a71a11ac493c3679111df7fa0b16b46c851b8fee8ad32e13"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.9.0/prov-linux-x86_64.tar.gz"
      sha256 "4c2351bab5e62671f73f65bb754fb1979780f7096e525e10da0330aa3ef892c1"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
