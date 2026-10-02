class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.13"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.13/leaf-macos-arm64.tar.gz"
      sha256 "ab88b01f0ec0053b462ea8c6bc83cb298ab7d3443fdca81691634294c5178423"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.13/leaf-macos-x86_64.tar.gz"
      sha256 "313e314bf12307181d4c88c7e1b8af9ebe315619942143c79e9732e5622daa57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.13/leaf-linux-aarch64.tar.gz"
      sha256 "9fbf1b5846f0aebad8e728484ea4d3a9ead04a8e1ffc790a5f607385a246856c"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.13/leaf-linux-x86_64.tar.gz"
      sha256 "475a063b023332906360da763e2bf9c2a4b2ef732851a407ba34ef34c8b5fa2f"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
