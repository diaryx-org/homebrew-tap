cask "leaf-editor" do
  version "0.5.0"
  sha256 "f4c08611d8a8e6ca4aa7824617d933a63df513fc640349ef670a7ce6e67632ba"

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
