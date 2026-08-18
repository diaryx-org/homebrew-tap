class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.6.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.0/prov-macos-arm64.tar.gz"
      sha256 "22fd916b645b6182d1dbaf18fdeea2560287e363de860d4f33d830219c695b38"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.0/prov-macos-x86_64.tar.gz"
      sha256 "d497bc8ae4e35ad8b8267a21b54b93ea209c1c930275c6fb210affb0858d2a45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.0/prov-linux-aarch64.tar.gz"
      sha256 "17342da971ae40a5cc4da8aeb05150504b1fa2786b3e2f514d7f71536cce1046"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.0/prov-linux-x86_64.tar.gz"
      sha256 "a29789557490b9fdf1da3b7ebd4b01326c07cde69eab432d36b270247b3cf00e"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
