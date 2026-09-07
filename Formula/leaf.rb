class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.8"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.8/leaf-macos-arm64.tar.gz"
      sha256 "8b30edac94b330b0b348301f85dfc12ad54291ab32f105a31f11e8348d9c5797"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.8/leaf-macos-x86_64.tar.gz"
      sha256 "9180c075c034acbec118ebb2cc2a8384b79f259dbe89faf1f4318fe1cdfd13db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.8/leaf-linux-aarch64.tar.gz"
      sha256 "3b5b25c858870bd5796f9a59800424c358e8b91734f150733c3b9f792abe5cc8"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.8/leaf-linux-x86_64.tar.gz"
      sha256 "b04aebfe6cf5b1482c1f8519ea02d4eb32cff074a25c6d6a09fb71c37dabdf22"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
