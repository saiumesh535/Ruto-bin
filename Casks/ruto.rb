cask "ruto" do
  version "1.0-1"
  sha256 "5b589df63766bd8e5c828d24faabf1fbcc644a6086a8ed6470e554534ee72dd9"

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
