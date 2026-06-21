cask "ruto" do
  version "1.2-5"
  sha256 "708fa11e65340d7b7b2564b1632df548cd0a67f3a8eb6ab8fa31f03154033312"

  url "https://github.com/saiumesh535/Ruto-bin/releases/download/v#{version}/Ruto.zip"
  name "Ruto"
  desc "A lightweight macOS menu-bar app to switch and manage your default browser easily"
  homepage "https://ruto.saiumesh.dev"

  livecheck do
    url :homepage
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+-\d+)$/i)
  end

  depends_on macos: ">= :sequoia"

  app "Ruto.app"

  zap trash: [
    "~/Library/Application Support/saiumesh.Ruto",
    "~/Library/Preferences/saiumesh.Ruto.plist",
    "~/Library/Caches/saiumesh.Ruto",
  ]
end
