cask "thorn-editor" do
  version "0.2.0"
  sha256 "86c2f810fe896e8487f6d61f6478f7a2aa380a00e95797c2d9e846aa4d9d26ff"

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
