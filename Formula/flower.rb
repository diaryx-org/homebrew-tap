class Flower < Formula
  desc "Structural terminal editor for JSON, YAML, TOML, ZON, and fig config"
  homepage "https://github.com/diaryx-org/flower"
  version "0.6.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.3/flower-macos-arm64.tar.gz"
      sha256 "6a9b4baf27e1a788b59461d75a05fc3160f1988050b044b6e757994f8d8fdc89"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.3/flower-macos-x86_64.tar.gz"
      sha256 "9111ca9e67f2b109f30ee7b4d4087480a9b6c223a6d0f56a94bcf873443cdbbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.3/flower-linux-aarch64.tar.gz"
      sha256 "c7b49e5f9eb76ef2bfe2416d47389dadf6fb8445c555129f2473f3e06dc35ebd"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.6.3/flower-linux-x86_64.tar.gz"
      sha256 "cffa4b92e1e40bb64fff6dca62e882628aa7aad2a61ba56709c563b63cc69acf"
    end
  end

  def install
    bin.install "flower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flower --version")
  end
end
