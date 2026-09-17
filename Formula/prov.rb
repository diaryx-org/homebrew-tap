class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.14.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.14.0/prov-macos-arm64.tar.gz"
      sha256 "5a4941b970051c04030aa59a3014bb45282b1cc0bc5713238adacb327d548215"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.14.0/prov-macos-x86_64.tar.gz"
      sha256 "1d261dc2d54ad247027e4cfed85acac760c40cf54ce23761f15d72a4c189ca7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.14.0/prov-linux-aarch64.tar.gz"
      sha256 "671783c1ef474e10aa25a9a9310411908953402865da79863c7f76595d61ccab"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.14.0/prov-linux-x86_64.tar.gz"
      sha256 "2e95ab4299dd28d4256f834f1cbadafb0ea26f3831032c5e8107ae1c2eb0f04c"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
