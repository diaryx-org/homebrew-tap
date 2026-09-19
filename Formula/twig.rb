class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.6.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.6.0/twig-macos-arm64.tar.gz"
      sha256 "b30d87d3df7696fd6f16df4bd9b1afb787c592821762ac6aca8e7a09d34cb189"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.6.0/twig-macos-x86_64.tar.gz"
      sha256 "a94b9b1743894a371bf2a569cdf88b00ed899311d78461244f420332aa928df6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.6.0/twig-linux-aarch64.tar.gz"
      sha256 "152fd55c668b0dffdd32ad1c422907bcb7705d23c101dceef4f9cb4cef3e0dc8"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.6.0/twig-linux-x86_64.tar.gz"
      sha256 "a6f8fcaff6ebda47cc726ca6fd7180ccfaf1bc37f2107985dee6a6fd88d0a21c"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
