cask "ruto" do
  version "1.6-18"
  sha256 "6b68cc9dbdfbbf75c4b7cc2ad641e0a67cfc8cdaff791646e3ebce36a2251ea8"

  url "https://github.com/saiumesh535/Ruto-bin/releases/download/v#{version}/Ruto.zip"
  name "Ruto"
  desc "A lightweight macOS menu-bar app to switch and manage your default browser easily"
  homepage "https://ruto.saiumesh.dev"

  livecheck do
    url "https://github.com/saiumesh535/Ruto-bin"
    strategy :github_latest
    regex(/^v?(d+(?:.d+)+-d+)$/i)
  end

  depends_on macos: ">= :sequoia"

  app "Ruto.app"

  zap trash: [
    "~/Library/Application Support/saiumesh.Ruto",
    "~/Library/Preferences/saiumesh.Ruto.plist",
    "~/Library/Caches/saiumesh.Ruto",
  ]
end
