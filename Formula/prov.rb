class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.6.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.3/prov-macos-arm64.tar.gz"
      sha256 "6f7dd064e9efb20941f1722f7555144b782184512895ae3d80c885347de61fd6"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.3/prov-macos-x86_64.tar.gz"
      sha256 "b78f1f63e693e1487d9d24619d3ad3729ebf942c6f957db3071712cd87aef0c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.3/prov-linux-aarch64.tar.gz"
      sha256 "6566d8c2b8b8055788838efee65188c57d261ffd181819bf533d31e7a6196082"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.6.3/prov-linux-x86_64.tar.gz"
      sha256 "73c39358dedaa26f74c0b8a50a7a6451007f9ed73bf12cceb7ef5af285d13aeb"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
