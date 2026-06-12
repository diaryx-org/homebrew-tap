class Diaryx < Formula
  desc "Local-first journal with audience visibility control"
  homepage "https://diaryx.org/"
  version "1.6.1"

  if Hardware::CPU.intel?
    url "https://github.com/diaryx-org/diaryx/releases/download/v#{version}/diaryx-x86_64-apple-darwin.tar.gz"
    sha256 "fa36bcca4d530b9d746e24725cc460dfc4bc1e9ab4c17c7df3b245258b0a2fba"
  else
    url "https://github.com/diaryx-org/diaryx/releases/download/v#{version}/diaryx-aarch64-apple-darwin.tar.gz"
    sha256 "db3e97a782cd511e89243aff366ef421375c3cdde9e2f6adec8b00193e1477ea"
  end

  def install
    bin.install "diaryx"
  end

  test do
    system "#{bin}/diaryx", "--version"
  end
end
