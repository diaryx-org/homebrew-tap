class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "4.0.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.1/fig-macos-arm64.tar.gz"
      sha256 "d6f3ae4ece847bf3052e51784fb6d3ada9c7caeded882dc70512c6d34c90fe89"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.1/fig-macos-x86_64.tar.gz"
      sha256 "67656396411d16949f1f5fb32277cc23c9c0d0c0ef838aa782e6d5f4e2115b85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.1/fig-linux-aarch64.tar.gz"
      sha256 "5a3520bbc17ed7375fd0b1f5a3e9d8629394b1acb14ee3a0ff58aded95f64804"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.1/fig-linux-x86_64.tar.gz"
      sha256 "c43e081439535cc60fcb16fb90d628bd50d22686831a0218738576a9fb72727b"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
