class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.13"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.13/leaf-macos-arm64.tar.gz"
      sha256 "cf64224b25c6998d770e4e8b9546ac07ecb1f2a4abd15968724c66b9c0077da9"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.13/leaf-macos-x86_64.tar.gz"
      sha256 "e9ce566508683bb1f1b2db5c3922cd4818982382bc4500df100d8af6b3403cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.13/leaf-linux-aarch64.tar.gz"
      sha256 "4a11ea41088280b55f8b735e45be44592c7bff28211dbe0059f2afbd2a70fc42"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.13/leaf-linux-x86_64.tar.gz"
      sha256 "ef26677cd666bf774ac3f723554289525b86e81558acf7c331a5a39fafe88c49"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
