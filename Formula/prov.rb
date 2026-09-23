class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.15.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.3/prov-macos-arm64.tar.gz"
      sha256 "4bc7ae05df1998c2a1c84fb29bb21b507a88146c45a3be76a9e5c2633c1537aa"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.3/prov-macos-x86_64.tar.gz"
      sha256 "47d82426e8b3aaa3c3f7f38a554ad8635f99ddeb4ffb06a2126d894ed3bfb902"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.3/prov-linux-aarch64.tar.gz"
      sha256 "1066778a2f8c0654615faca665ebd018ecb6f3419654c2aef7f361926770db9e"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.15.3/prov-linux-x86_64.tar.gz"
      sha256 "3d1ade3c65d35032e63b248f52beb7d052bfb4d93c2d299da769791e1348cfba"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
