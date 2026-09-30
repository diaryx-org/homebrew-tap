cask "leaf-editor" do
  version "0.4.12"
  sha256 "36b71fa600f069ceb57f431e08082e25c1672fb33d8828af42e9f24eb1d123c2"

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
