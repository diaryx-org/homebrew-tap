class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.5.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.2/twig-macos-arm64.tar.gz"
      sha256 "ee4df4656e83ab51fc53f05548e880bd3b2b706b5c9b99082aec17e215418584"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.2/twig-macos-x86_64.tar.gz"
      sha256 "d2d21ae8d0c5c3e15705fc11e38a1e61d0b0014b8ca62e2771cf88aae7397910"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.2/twig-linux-aarch64.tar.gz"
      sha256 "da86bed93c50a4e85818f3b331fa5d1b22ccdeef73760461c474130e95c867e5"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.5.2/twig-linux-x86_64.tar.gz"
      sha256 "41f56109ba66e270bc2e058203229730254fbce4a31a20aa7ff0f9f8e5c11d7f"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
