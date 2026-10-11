cask "ruto" do
  version "1.6-17"
  sha256 "4e49645cf5661896cf4563195b21843b6ed59f2281bc05ffa4652f442ffeb956"

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
