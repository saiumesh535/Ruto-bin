cask "ruto" do
  version "1.2-7"
  sha256 "4a555198dcc5089f0a998a259989e8a617b2a75187ce0da3577b50f3e4a38654"

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
