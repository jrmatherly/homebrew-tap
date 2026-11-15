cask "returnofthemac-app" do
  version "0.1.3"
  sha256 "cca153c15714d51cc92ff3a98ca9eb5ac84a9dc08dd52daf5a235cdc7510aa69"

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
