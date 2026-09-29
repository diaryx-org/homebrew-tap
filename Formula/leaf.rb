class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.9"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.9/leaf-macos-arm64.tar.gz"
      sha256 "60247e99609794d7f6ed9fd52584919561f58411a21ff71978806fb1666eaf1b"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.9/leaf-macos-x86_64.tar.gz"
      sha256 "3013f64a05205fc5e0c33ceb2aff05114c8fa99c113c5e1ceb789801fdfb66fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.9/leaf-linux-aarch64.tar.gz"
      sha256 "68ad71c3215ca91a2c5c2893286d505396336e82d7fd0ca95ca5ded2931f19ea"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.9/leaf-linux-x86_64.tar.gz"
      sha256 "655b6c1aca79468f5f038a293e580a1054931c18ecf52cb4ffcc0d6577f0e6aa"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
