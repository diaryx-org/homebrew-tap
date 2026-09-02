class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "4.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.0/fig-macos-arm64.tar.gz"
      sha256 "7799ad331dc727ef85313a4c441565dce3c0fcf54bb75b5bde9717772f727724"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.0/fig-macos-x86_64.tar.gz"
      sha256 "3772814cadc3312ede3e0d800dd7adaf4c4427ab13ecd1922a6b5eeb407ab05c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.0/fig-linux-aarch64.tar.gz"
      sha256 "1620a5a35faf06afdb825cef29d8b09df43f1e885bab634a42459f57627ecc6c"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.0/fig-linux-x86_64.tar.gz"
      sha256 "3f2fa7ef0004ab0c666eb54fce4e3c41eba4331cd50fe72d334389a9e6adf28d"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
