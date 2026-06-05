cask "diaryx" do
  version "1.6.0"

  if Hardware::CPU.intel?
    sha256 "14adf89d4bd9f7ca9dedde09e8f85c3e732a5992636866ff3430cd6fa86627c2"
    url "https://github.com/diaryx-org/diaryx/releases/download/v#{version}/Diaryx_1.6.0_x64.dmg"
  else
    sha256 "207ef015bd794856732a9e9aca0282973e650037405e8dc7721cf2a55b46a231"
    url "https://github.com/diaryx-org/diaryx/releases/download/v#{version}/Diaryx_1.6.0_aarch64.dmg"
  end

  name "Diaryx"
  desc "Local-first journal with audience visibility control"
  homepage "https://diaryx.org/"

  app "Diaryx.app"

  zap trash: [
    "~/Library/Application Support/org.diaryx.app",
    "~/Library/Preferences/org.diaryx.app.plist",
    "~/Library/Saved Application State/org.diaryx.app.savedState",
  ]
end
