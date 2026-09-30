class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.11"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.11/leaf-macos-arm64.tar.gz"
      sha256 "6c3e90264c66e0937aca0f5afdff42f45405eed02c8b6682c1be1e75527b1db1"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.11/leaf-macos-x86_64.tar.gz"
      sha256 "16e0a6a67f57ddea7dd2fb1388362698bf80f620ceb67eece8ab8792bedf9dc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.11/leaf-linux-aarch64.tar.gz"
      sha256 "fae51a5e56ff4a5a4b25a06b722bab2ea711c98f515a5906cefe9b5e7cbe9572"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.11/leaf-linux-x86_64.tar.gz"
      sha256 "a6fc7c3034b2dbbc9a82dfd434247bbf6dd61be38a625d60d9a4e91a1163ca9d"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
