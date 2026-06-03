cask "ruto" do
  version "1.2-3"
  sha256 "5fe4c0d89b9868a3d597478ff1dafaa649630feedcfed83ad8fa130310c28ad4"

  url "https://github.com/saiumesh535/Ruto-bin/releases/download/v#{version}/Ruto.zip"
  name "Ruto"
  desc "A lightweight macOS menu-bar app to switch and manage your default browser easily"
  homepage "https://github.com/saiumesh535/Ruto-bin"

  livecheck do
    url :homepage
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+-\d+)$/i)
  end

  depends_on macos: ">= :ventura"

  app "Ruto.app"

  zap trash: [
    "~/Library/Application Support/saiumesh.Ruto",
    "~/Library/Preferences/saiumesh.Ruto.plist",
    "~/Library/Caches/saiumesh.Ruto",
  ]
end
