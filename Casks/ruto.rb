cask "ruto" do
  version "1.2-8"
  sha256 "4e0f6a4d0be61ba74335f669a819513ec34036d43847a775fa9951be69b31529"

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
