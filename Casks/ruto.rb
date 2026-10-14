cask "ruto" do
  version "1.6-19"
  sha256 "546c9e32942f65acfac830617cb3334daf6c356c64814ad070175ecc4b6b78eb"

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
