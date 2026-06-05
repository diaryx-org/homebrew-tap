class Diaryx < Formula
  desc "Local-first journal with audience visibility control"
  homepage "https://diaryx.org/"
  version "1.6.0"

  if Hardware::CPU.intel?
    url "https://github.com/diaryx-org/diaryx/releases/download/v#{version}/diaryx-x86_64-apple-darwin.tar.gz"
    sha256 "cd70d87c4ab47b16e4ec4a5bf1567bb667531ef0cf46b2034ea0d4977e4f19d0"
  else
    url "https://github.com/diaryx-org/diaryx/releases/download/v#{version}/diaryx-aarch64-apple-darwin.tar.gz"
    sha256 "c05010a4eb5b8c16ac2672e003edbf65d567f8924a3f02536c9a0ed7277a9079"
  end

  def install
    bin.install "diaryx"
  end

  test do
    system "#{bin}/diaryx", "--version"
  end
end
