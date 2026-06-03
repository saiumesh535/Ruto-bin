cask "ruto" do
  version "1.2-2"
  sha256 "a9df3666fe8a582a0846315af14671c828442e93797c5d401eaf08f3206dbdcd"

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
