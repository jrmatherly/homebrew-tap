cask "returnofthemac-app" do
  version "0.1.1"
  sha256 "b7c56999f387b7e14dabf1e6ab245614e2d1ff3107631f75e2fa97083567dc39"

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
