class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "6.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v6.1.0/fig-macos-arm64.tar.gz"
      sha256 "7a8d77cf427710efb180c674460b11f47f8af29d0721c4eb5e787571ef8ddd7d"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v6.1.0/fig-macos-x86_64.tar.gz"
      sha256 "92f10cfc4042021f762ff0bfcd9c8d3ef1eefe267065735dc2f7953fe79fe159"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/v6.1.0/fig-linux-aarch64.tar.gz"
      sha256 "8356dc42be9353b01798105bbaabbb16e9a19b1aa1b696c080e183bb8acff7bf"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/v6.1.0/fig-linux-x86_64.tar.gz"
      sha256 "d48892de3718b2dff0e0631aa183079b5f3b4a9dbdd3a993d990fd2c234aea0c"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
