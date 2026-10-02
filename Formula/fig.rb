class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "5.1.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.1/fig-macos-arm64.tar.gz"
      sha256 "c432773f869c006df8ca8733f043f4e7438e1e1806f2e1ba2e6031f06a824409"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.1/fig-macos-x86_64.tar.gz"
      sha256 "ad9c09422509c510bfe5e49caec9cdfa3c99f946a534169f9c9719749d9d47a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.1/fig-linux-aarch64.tar.gz"
      sha256 "4b31e2e25f2cd5d6e8731c80a115627fb6a739e88b181d7afb2a42bac82f6389"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.1/fig-linux-x86_64.tar.gz"
      sha256 "c6642a38b6c6844e97a7e0feb41e8075c85b5003343b160a08d91ce5c229e38a"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
