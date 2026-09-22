class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.9.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.2/twig-macos-arm64.tar.gz"
      sha256 "da483f530ff99f30169a02d8622dc1f6044dad9dc6ee81579d5c4140cf8cb604"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.2/twig-macos-x86_64.tar.gz"
      sha256 "b679454602394994171e118fca2bdf08ac32bc5d94afb09389e1b28b701a33c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.2/twig-linux-aarch64.tar.gz"
      sha256 "ff99fa0e3ef42f1fb690d246c9d75a5fabb3680c1de37c4c3031f216fd887930"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.9.2/twig-linux-x86_64.tar.gz"
      sha256 "8dc910a0863c4be993c899e372141529e7741636420bbaac139eaf1a06198b12"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
