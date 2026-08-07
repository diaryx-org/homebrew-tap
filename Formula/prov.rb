class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.4.0/prov-macos-arm64.tar.gz"
      sha256 "b7f4de26134c39c5767ae7af4fb34627b396dcd57986d6945f36b2aa6e4962e4"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.4.0/prov-macos-x86_64.tar.gz"
      sha256 "a8a6c4adf741e8b0ec2d9fc3354ad0b8e400b2dc412db5c3792ca922a671143c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.4.0/prov-linux-aarch64.tar.gz"
      sha256 "a6798410141269fa09983743d4e5e7b303a6640bab6516b4b0b263595d67735d"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.4.0/prov-linux-x86_64.tar.gz"
      sha256 "5361a03dfcb1c347ce467803fbadf39502c4db36b89bd81c9e2a8e9ba65163fc"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
