class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "5.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.0/fig-macos-arm64.tar.gz"
      sha256 "cd3b3b0e9c31edc61553677bf68f16f3dcb202e2239817656b50b76fb2585f86"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.0/fig-macos-x86_64.tar.gz"
      sha256 "ce514d9898fb084898dc46283bf7d222c89cbe52aeaa7b7636a39d2a77b83a40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.0/fig-linux-aarch64.tar.gz"
      sha256 "b9ff52d405e75c4ee53b2343c4fcb1974e6e2ab33f0a7c409dab7451d43c1e3b"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.0/fig-linux-x86_64.tar.gz"
      sha256 "33ddc0e809b37f52ea36100514c689de87b117cd6c144e0c6bd9193b1164e931"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
