cask "ruto" do
  version "1.2-4"
  sha256 "30c3fdfe5cbfbfcb4b3e1567d9e6d8ba4f57e004258c3575896d6ae7224d5ece"

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
