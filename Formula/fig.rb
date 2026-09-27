class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "5.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.0.0/fig-macos-arm64.tar.gz"
      sha256 "be81257665bf2dd912020603277a69991082c322bb0516e23a402f33192cd2ad"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.0.0/fig-macos-x86_64.tar.gz"
      sha256 "a28ab9be3350f5171c2f9fa92a4428bd9e6c8911042fd5508a4472ac91ddb9bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.0.0/fig-linux-aarch64.tar.gz"
      sha256 "de7b32b387de84a9e2b0d5d263fc83c4168fc8c3cd434aacd8ea31d593820806"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.0.0/fig-linux-x86_64.tar.gz"
      sha256 "5f2948124f8f0a80e54014bb637d451e2e662b5e719f1646d37fbf4a5e931a81"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
