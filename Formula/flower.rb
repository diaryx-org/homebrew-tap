class Flower < Formula
  desc "Structural terminal editor for JSON, YAML, TOML, ZON, and fig config"
  homepage "https://github.com/diaryx-org/flower"
  version "0.5.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.5.0/flower-macos-arm64.tar.gz"
      sha256 "fdb40dc6e11b414b3a2fe33a1e4557e867e56865c6ea13be9c2888faf4be04cc"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.5.0/flower-macos-x86_64.tar.gz"
      sha256 "d666833917ab207819885760c5b45ef4869188523493881aaa44828711abdd17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/flower/releases/download/v0.5.0/flower-linux-aarch64.tar.gz"
      sha256 "2bee7e26fac2691e9500625bef9d1538f89c246341c439349e8517797d5001b1"
    end
    on_intel do
      url "https://github.com/diaryx-org/flower/releases/download/v0.5.0/flower-linux-x86_64.tar.gz"
      sha256 "66d4b55d66980dc99cd98379406c1bc12939fb95a50fc1bb1786a801c9e71b83"
    end
  end

  def install
    bin.install "flower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flower --version")
  end
end
