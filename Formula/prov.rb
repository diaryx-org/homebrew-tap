class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.17.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.17.1/prov-macos-arm64.tar.gz"
      sha256 "12f1dcad19074176accad7334b4ebba3aa10f974ccc410bb59e65c38de1b0dc1"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.17.1/prov-macos-x86_64.tar.gz"
      sha256 "56d77d618e74924cbb5cd9019d334c620bec4d9fcf05fc6a92b41a1e51ac9e05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.17.1/prov-linux-aarch64.tar.gz"
      sha256 "5a24ce3e0de291656948b4e6e62db9b487d481102577aa89761f43ccc3308e57"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.17.1/prov-linux-x86_64.tar.gz"
      sha256 "b753c56d4c5a141d36a891fb0802b31e218f490cb901517795ad84503622af30"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
