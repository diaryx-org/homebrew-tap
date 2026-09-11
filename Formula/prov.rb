class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.12.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.12.0/prov-macos-arm64.tar.gz"
      sha256 "aa3eab87ed656fc7e1be739176e82f01ce4fa60026fd7dbaa9ceb47377c57885"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.12.0/prov-macos-x86_64.tar.gz"
      sha256 "6daf654493b392738444c44819f6ba2349bc0782a3cd289c0a40bb91efa79a30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.12.0/prov-linux-aarch64.tar.gz"
      sha256 "e9351f9a6e0653621bddfe224b8cebbb1d5c96ad8d8139f5d056efd7b4b540a7"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.12.0/prov-linux-x86_64.tar.gz"
      sha256 "5bda366d02615a96fdabc657e96284822249dbb3115f9798895979bfddb064c3"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
