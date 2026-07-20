class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "3.5.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.5.2/fig-macos-arm64.tar.gz"
      sha256 "04f47f8e799ae9ef914c26aa40004645e660f4c9a4001ced8628be9ca7987a6e"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.5.2/fig-macos-x86_64.tar.gz"
      sha256 "a4ca7df62e348e1e7514688e18ac722f81cabdc234d16a59059aa55d6f813845"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.5.2/fig-linux-aarch64.tar.gz"
      sha256 "2c0866970976d307b48d9db0704b37746c44cac7758f4b0ae22df6e2a49b5ce4"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.5.2/fig-linux-x86_64.tar.gz"
      sha256 "4da6666ec6b4f945350b4ca6a1f6799b2ed82ff12eea80d4387e281b783bbdc0"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
