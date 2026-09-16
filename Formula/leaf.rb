class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.19"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.19/leaf-macos-arm64.tar.gz"
      sha256 "8800bf455caacdfd4bf9118f5b1445276996189e6ddcecd5267402c1b5ffd09d"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.19/leaf-macos-x86_64.tar.gz"
      sha256 "f600fb19cc0cce63bdba9c572d74ad436be5ea712058d0235665f469a5a82e37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.19/leaf-linux-aarch64.tar.gz"
      sha256 "d73349a676489a67d6454f8e36c215c525baaba8b58fbba4a588e1bc9a276587"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.19/leaf-linux-x86_64.tar.gz"
      sha256 "56b3c93dd891f1b45f9525f55f20b569e458cbacde841ffb9594b98a494e8ee0"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
