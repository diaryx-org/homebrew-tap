class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/diaryx-org/twig"
  version "3.7.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.7.0/twig-macos-arm64.tar.gz"
      sha256 "09a050c3b5b993c6bda8ff97ea2469fce4ccbbe4ffd6a6b80568fe1856ca5ccc"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.7.0/twig-macos-x86_64.tar.gz"
      sha256 "9077cf3ead9def20bf7979936854d8334bd4992dcf1eec9df09d5f119491bca7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/twig/releases/download/v3.7.0/twig-linux-aarch64.tar.gz"
      sha256 "f6531989d07f800f9af9cb2813ca3e0ea3e94f41f2041763e6ef942987fc050f"
    end
    on_intel do
      url "https://github.com/diaryx-org/twig/releases/download/v3.7.0/twig-linux-x86_64.tar.gz"
      sha256 "3be80841a9a57ed2bf69955661a41ee3925c2983935e6c3b209f8f25ae350240"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
