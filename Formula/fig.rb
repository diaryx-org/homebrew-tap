class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "3.5.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.5.4/fig-macos-arm64.tar.gz"
      sha256 "a9d0fe2e2b8a4f78ec90e07cba12b1f23b95c719eecf78ade6dc267a1523efb7"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.5.4/fig-macos-x86_64.tar.gz"
      sha256 "b4464287d717aad0dca21ff7ca7dadd11f80803219ad5934ff7e4d38f47d6949"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.5.4/fig-linux-aarch64.tar.gz"
      sha256 "d0951bd0994cfb4a0d2b6ccaac2f092b39db26fd1728beb7529ad9d2e516871f"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v3.5.4/fig-linux-x86_64.tar.gz"
      sha256 "5d36c46fb38337a8830cc7f158d771605e8adf3b63c0a8b2ba2efcdd6f237166"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
