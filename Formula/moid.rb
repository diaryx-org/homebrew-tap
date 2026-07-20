class Moid < Formula
  desc "Command-line companion for the moid opaque-ID minter"
  homepage "https://github.com/diaryx-org/moid"
  version "1.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/moid/releases/download/v1.0.0/moid-macos-arm64.tar.gz"
      sha256 "0ddefee8444a75771f7c4a429b523e01ae1a37f41a33b8c9cfc98f25eccd819f"
    end
    on_intel do
      url "https://github.com/diaryx-org/moid/releases/download/v1.0.0/moid-macos-x86_64.tar.gz"
      sha256 "1eaf3c41825aa4582076f25da2ed8c7b71d3e2f66480f5126e1bb72bb5551481"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/moid/releases/download/v1.0.0/moid-linux-aarch64.tar.gz"
      sha256 "1e5124166e66ca61ae272318af4f5aa11e5974c06b21a545a8185a3104038475"
    end
    on_intel do
      url "https://github.com/diaryx-org/moid/releases/download/v1.0.0/moid-linux-x86_64.tar.gz"
      sha256 "5dcd6944bfb1427c922deffb15223b4bdcf02595c1633d28dfa150ebf892a2db"
    end
  end

  def install
    bin.install "moid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/moid --version")
  end
end
