cask "thorn-editor" do
  version "0.1.4"
  sha256 "1e0db76a87e83db5ee2a11cb9a5fe04d15f4f8a6947c6df29cc0ea94bdec5d5f"

  url "https://github.com/diaryx-org/thorn/releases/download/v#{version}/Thorn-#{version}-aarch64.dmg"
  name "Thorn"
  desc "Drawing editor for SVG diagrams"
  homepage "https://github.com/diaryx-org/thorn"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Thorn.app"

  zap trash: [
    "~/Library/Application Scripts/org.diaryx.thorn",
    "~/Library/Containers/org.diaryx.thorn",
  ]
end
