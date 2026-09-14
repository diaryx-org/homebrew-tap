class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.1.14"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.14/leaf-macos-arm64.tar.gz"
      sha256 "331eee8dab4d5ca684ffe05c43b7dca7bd325219e7695e919af1ad8ff117ad30"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.14/leaf-macos-x86_64.tar.gz"
      sha256 "33f22150c11de05002b62f25bb3665e565a9de08d50f02023082577d88ba3b70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.14/leaf-linux-aarch64.tar.gz"
      sha256 "9fb4060d7ad573528cdd7090b671adcd06e9518808508706311bc79b9b90085a"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.1.14/leaf-linux-x86_64.tar.gz"
      sha256 "4326930999e9e86e3febc16a6034980514aae6289ed28353f3ea9e532d6de653"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
