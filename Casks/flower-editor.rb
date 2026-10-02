cask "flower-editor" do
  version "0.6.4"
  sha256 "a5e4de80449d5732b247357d9a468ba3280f6242c2fc9cf4772d554bb1811f04"

  url "https://github.com/diaryx-org/flower/releases/download/v#{version}/Flower-#{version}-aarch64.dmg"
  name "Flower"
  desc "Structural editor for JSON, YAML, TOML and fig config files"
  homepage "https://github.com/diaryx-org/flower"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Flower.app"

  zap trash: [
    "~/Library/Application Scripts/org.diaryx.flower",
    "~/Library/Containers/org.diaryx.flower",
  ]
end
