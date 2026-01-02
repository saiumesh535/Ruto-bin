cask "ruto" do
  version "1.0-1"
  sha256 "03bf73979df8a0e3fbe3186a4f237b7435acab733428dfb52fc89908a7778216"

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
