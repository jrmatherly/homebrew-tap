cask "returnofthemac-app" do
  version "0.1.4"
  sha256 "44ee3ded4e0bba29c4a0d9b05386e9843726a577c5b76c31f5acc3fa055748f1"

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
