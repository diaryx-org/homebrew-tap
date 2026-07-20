class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.0/prov-macos-arm64.tar.gz"
      sha256 "aaf6b94c2b580549405025e03d35b48166e34dcbfbb713e261749837c1b26c48"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.0/prov-macos-x86_64.tar.gz"
      sha256 "4886a7b39a42929baab465da26b9454b0194b3384a9481a0ab34e73147cb32ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.0/prov-linux-aarch64.tar.gz"
      sha256 "823327ca3e0358de1ae0d66e27e7d63cd3b01b476ef530d73cd52f7a3de34200"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.3.0/prov-linux-x86_64.tar.gz"
      sha256 "9c3edb2b9e02b47062b7be5a5ac62215ae5c5b17e2b3b4e71bd487578c4d567c"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
