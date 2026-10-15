class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "6.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v6.0.0/twig-macos-arm64.tar.gz"
      sha256 "0f2e8d82a42fb141b781f1a867c109d7c1d3d43540f36d0045a7438a8790e89f"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v6.0.0/twig-macos-x86_64.tar.gz"
      sha256 "fe1dd68a0f40aa6bce0c162b38407b93300bfd6309ddffa459bf9cfb4a01fc2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v6.0.0/twig-linux-aarch64.tar.gz"
      sha256 "d3caff222447830323ef7420d2f4fedbbbc4c14df408569e7f045dda269f0711"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v6.0.0/twig-linux-x86_64.tar.gz"
      sha256 "5403a6164195bdb156ce8b6ca5c889e41d14cd41da59a308da14c47e1e4e00a7"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
