class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.10"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.10/leaf-macos-arm64.tar.gz"
      sha256 "1a6757fdec153685da3eb259980340e14d8298e250a533226453ed556d7193f0"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.10/leaf-macos-x86_64.tar.gz"
      sha256 "984d91be3c525fc8d0fa70cc48d844264a18212cd1352c757d4f9efaa2f49022"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.10/leaf-linux-aarch64.tar.gz"
      sha256 "410c28d5d592ceabf0354871aaa694411541c035198d1235176822556575404f"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.10/leaf-linux-x86_64.tar.gz"
      sha256 "f08b704c512cecfc5f76d41bf7317d4d8f0ddeca3e237c97d6fc8765b54f2e95"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
