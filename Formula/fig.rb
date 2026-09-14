class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/diaryx-org/fig"
  version "4.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.0/fig-macos-arm64.tar.gz"
      sha256 "4952cb43cda0af1169961b84b2ef6d101f61402ad82e5dbfb71842b84bf938c3"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.0/fig-macos-x86_64.tar.gz"
      sha256 "b74dfdff01ace19cc5ed9d44f352f323250569d5a78fdbcfc4d103b5be4f51da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.0/fig-linux-aarch64.tar.gz"
      sha256 "48947a43fa37a6440d12926a9346044ea55a2f8acbaeea71299faebd56d4af7b"
    end
    on_intel do
      url "https://github.com/diaryx-org/fig/releases/download/cli/v4.0.0/fig-linux-x86_64.tar.gz"
      sha256 "2f6859819003ab50f0d7c5cf3f6c272d29b3b0207e5a7d08231637cdf7a03baf"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
