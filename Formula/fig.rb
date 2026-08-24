class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "3.6.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.6.0/fig-macos-arm64.tar.gz"
      sha256 "173ea365f26147d786bd8f1d416b737637b89790597ce635fe9c982a31532a72"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.6.0/fig-macos-x86_64.tar.gz"
      sha256 "b5824a335ec62bd340718cd5282f6473efebb2092a2f5b409313d4c2c64f6035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.6.0/fig-linux-aarch64.tar.gz"
      sha256 "b31171b976d6e83bcf0941805c3eb6497803d0e85e8b514201683e1c2dadcb02"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.6.0/fig-linux-x86_64.tar.gz"
      sha256 "db70e58565fa4fbd3f7155d29a73dcc158a156b18614c7dffbd6bfe215d524b3"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
