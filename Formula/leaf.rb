class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.2/leaf-macos-arm64.tar.gz"
      sha256 "38c976930cf961d950ac6f5f1d56b0093d5bd3f5fba6486f47e5c059c26159f8"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.2/leaf-macos-x86_64.tar.gz"
      sha256 "0ec350c26348d17ad99b31d43d3144190db441846f60b3ffbbb7a62bab98579f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.2/leaf-linux-aarch64.tar.gz"
      sha256 "18ccf41408afde4c61742f66cb7d3761315c1c29c9e978adce858291341c7186"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.2/leaf-linux-x86_64.tar.gz"
      sha256 "9a4c80642c4079dc042aaa5b368338e6e34a4f959e8b34245e8f2313630a86de"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
