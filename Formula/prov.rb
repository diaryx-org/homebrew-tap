class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.15.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.2/prov-macos-arm64.tar.gz"
      sha256 "14f6ea2038ab0259b06413d6f8cf8dbff51d019fd657d53c7ed150df2c170147"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.2/prov-macos-x86_64.tar.gz"
      sha256 "91c7c5ff67cfdef34c1378d32c3d2850af6c6ccd8deb6e170b41d8017b3f73b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.2/prov-linux-aarch64.tar.gz"
      sha256 "2cbe49c4aca01c14fbafd7a040681b13aaafa960427df98f526f8ea7f8b42383"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.2/prov-linux-x86_64.tar.gz"
      sha256 "caa1fd820e93192b40be987155611f5ffdcaea612d9cc3cf85ee427cb9f03c0d"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
