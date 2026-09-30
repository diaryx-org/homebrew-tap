class Leaf < Formula
  desc "Caret-based rich-text terminal editor for Markdown, Djot, HTML, and XML"
  homepage "https://github.com/diaryx-org/leaf"
  version "0.4.10"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.10/leaf-macos-arm64.tar.gz"
      sha256 "ec1e5e54087f82b489cc14b40573a638a66a8735bcc7a7342b4b238feffd643c"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.10/leaf-macos-x86_64.tar.gz"
      sha256 "8b2f987043161b8d8f422c6613ed48485f9aba7f3bb4d81e9bccd248d08eb9a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.10/leaf-linux-aarch64.tar.gz"
      sha256 "22ba380b947bd773e82c25698993d989173d5f3f51f02d171b69880c2680df22"
    end
    on_intel do
      url "https://github.com/diaryx-org/leaf/releases/download/v0.4.10/leaf-linux-x86_64.tar.gz"
      sha256 "e7103eb35f9a4e4fb43af58aee03958711a3bfd00714dd3b9f7b5b21d306df7d"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leaf --version")
  end
end
