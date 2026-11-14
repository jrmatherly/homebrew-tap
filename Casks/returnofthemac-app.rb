cask "returnofthemac-app" do
  version "0.1.0"
  sha256 "49593c2ab1bb5675cabaa3c3192e4e6bb9c83be0dfbf7513ab4cd3af19112003"

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
