class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/diaryx-org/prov"
  version "0.11.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.11.1/prov-macos-arm64.tar.gz"
      sha256 "de43874d302d276d43569fcaee1bf5ece96f84130cfcb45315d16dd8b19ca8af"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.11.1/prov-macos-x86_64.tar.gz"
      sha256 "b0da3e87fd5d4ef58853efa7e3687ff01ed59f7f8db23b6121c37cf9c53de5ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diaryx-org/prov/releases/download/v0.11.1/prov-linux-aarch64.tar.gz"
      sha256 "9d21c599f478bb5699f94a05006b8ba67d81d527d659b678856a399ce3552ed0"
    end
    on_intel do
      url "https://github.com/diaryx-org/prov/releases/download/v0.11.1/prov-linux-x86_64.tar.gz"
      sha256 "fb8dfb1d14c409e5735974466d7cafff3b0cff99a0d1e07dfecd711dfff50c0e"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
