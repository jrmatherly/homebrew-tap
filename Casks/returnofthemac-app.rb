cask "returnofthemac-app" do
  version "0.1.2"
  sha256 "2ecbf3ec958d5494dbffcf1fba1e11da5848fd4ec87491ddd36192d06fd7f09d"

  url "https://github.com/jrmatherly/returnofthemac/releases/download/app-v#{version}/returnofthemac-app_#{version}_arm64.dmg"
  name "Return of the Mac"
  desc "Menu bar app for the returnofthemac macOS setup: settings, sync, profiles and updates"
  homepage "https://github.com/jrmatherly/returnofthemac"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Return of the Mac.app"

  zap trash: [
    "~/Library/Logs/returnofthemac",
    "~/Library/Preferences/net.matherly.returnofthemac.plist",
  ]
end
