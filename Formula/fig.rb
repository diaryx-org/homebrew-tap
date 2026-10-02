class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "5.1.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.2/fig-macos-arm64.tar.gz"
      sha256 "367f4c28f3c968bb7b272d6d41ce5cf2df4b4149603a7738b636c4b50b106b09"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.2/fig-macos-x86_64.tar.gz"
      sha256 "2512c4b1df69afadd84fd706177dc4299e457ec0999bfadf294a94378466c0e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.2/fig-linux-aarch64.tar.gz"
      sha256 "7ab0ca875f26301f41822393deea63bd46f175169302768f6dcac796d222bcf7"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v5.1.2/fig-linux-x86_64.tar.gz"
      sha256 "c9d3af6d4c3bc0f8b737ba2105de4c7720182ea34de00b20bb87601df5855337"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
