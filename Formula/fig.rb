class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "5.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.2.0/fig-macos-arm64.tar.gz"
      sha256 "583e654f52e198da6e3cda75e9669c301d8baace86b6fe0e35fa2bd238ea4f52"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.2.0/fig-macos-x86_64.tar.gz"
      sha256 "9daac6ccf517396c5e0184e078fa7038a35d0d70659b6cfd070c14755cd1808c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.2.0/fig-linux-aarch64.tar.gz"
      sha256 "9ed6f842a16da3c820b6052cac60a19a31f758d5b2fade639f328132ea934e12"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.2.0/fig-linux-x86_64.tar.gz"
      sha256 "af684ab428748f9e54c0f2b90fcbb6fdae5d52a9800b88167558eb015e0dd971"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
