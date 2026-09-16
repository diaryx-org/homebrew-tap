class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.18"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.18/leaf-macos-arm64.tar.gz"
      sha256 "deae770870ddf7f78f2af5f59048582cea754da3488c31a20691c86ae89e0632"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.18/leaf-macos-x86_64.tar.gz"
      sha256 "d046ead34df1d166961a1efb872436d62ae4bb7657b83f5b087188eb487c70ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.18/leaf-linux-aarch64.tar.gz"
      sha256 "b4988fb7b02bf61ff45f3da43615626b965f14d227b0ae8a3cac542ca73681a1"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.18/leaf-linux-x86_64.tar.gz"
      sha256 "e407b618129f7538ea80373f017f65dc50fe72bc9a156dff84d947d99ebe858d"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
