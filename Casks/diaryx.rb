cask "diaryx" do
  version "1.6.1"

  if Hardware::CPU.intel?
    sha256 "bb10821c2080baa5d70467e3832fe2b087a14492fac6f9dbe1f0ed0e4aa49544"
    url "https://github.com/diaryx-org/diaryx/releases/download/v#{version}/Diaryx_1.6.1_x64.dmg"
  else
    sha256 "4b365d586592caf755ca180653d7533517401c7314c78b3b208e2b0f779da426"
    url "https://github.com/diaryx-org/diaryx/releases/download/v#{version}/Diaryx_1.6.1_aarch64.dmg"
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
