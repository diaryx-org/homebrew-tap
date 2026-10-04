cask "leaf-editor" do
  version "0.5.1"
  sha256 "024029618fe65a5d717e2993581920210cf2c0bd23b561e7ae012b7aa03fc963"

  url "https://github.com/diaryx-org/leaf/releases/download/v#{version}/Leaf-#{version}-aarch64.dmg"
  name "Leaf"
  desc "Caret-based rich-text editor for Markdown, Djot, and HTML documents"
  homepage "https://github.com/diaryx-org/leaf"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Leaf.app"

  zap trash: [
    "~/Library/Caches/org.diaryx.leaf",
    "~/Library/Preferences/org.diaryx.leaf.plist",
    "~/Library/Saved Application State/org.diaryx.leaf.savedState",
  ]
end
