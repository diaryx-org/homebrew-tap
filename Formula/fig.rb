class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "6.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v6.0.0/fig-macos-arm64.tar.gz"
      sha256 "51b8ad7965876891213024a5c48ced0ddef02bc7d634ce53ee4c2b348f4adff6"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v6.0.0/fig-macos-x86_64.tar.gz"
      sha256 "f9608b1f41b61549d5a611a14139ef12d5f69c76b0934ed97d71c0d048f927a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v6.0.0/fig-linux-aarch64.tar.gz"
      sha256 "258a65bd4fba5ae3e60764e287c89bf7cc641d7a453fd4731a78ddf7d94c2c76"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v6.0.0/fig-linux-x86_64.tar.gz"
      sha256 "7a8f1753034abf1e8af445d7db484ad65d9bc3022f676d51eecd8e0089c5daca"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
