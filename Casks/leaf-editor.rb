cask "leaf-editor" do
  version "0.4.13"
  sha256 "23981c49207ddd9c913fc3574f46d0e7643c83f37f3583e00fc76c75ca823570"

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
