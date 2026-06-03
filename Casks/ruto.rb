cask "ruto" do
  version "1.2-1"
  sha256 "19676c10789c8834dedf6feb8be8d142a5d15a6d7ab86f26890aee3ad3546f02"

  url "https://github.com/saiumesh535/Ruto-bin/releases/download/v#{version}/Ruto.zip"
  name "Ruto"
  desc "A lightweight macOS menu-bar app to switch and manage your default browser easily"
  homepage "https://github.com/saiumesh535/Ruto-bin"

  depends_on macos: ">= :ventura"

  app "Ruto.app"

  zap trash: [
    "~/Library/Application Support/saiumesh.Ruto",
    "~/Library/Preferences/saiumesh.Ruto.plist",
    "~/Library/Caches/saiumesh.Ruto",
  ]
end
