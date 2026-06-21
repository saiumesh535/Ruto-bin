cask "ruto" do
  version "1.2-6"
  sha256 "d5355de98b1f21cf45ba0e00e00da48d7e88eee8e7d92abbc9184f1153721c00"

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
