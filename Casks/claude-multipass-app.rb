cask "claude-multipass-app" do
  version "0.6.0"
  sha256 "95c557d148f676733be060492a451f1289787882f85b15d40bc6ce03e2699d23"

  url "https://github.com/jrmatherly/claude-multipass/releases/download/v#{version}/claude-multipass-app_#{version}_arm64.dmg"
  name "Claude Multipass"
  desc "Menu bar app to switch Claude Desktop between saved claude.ai accounts"
  homepage "https://github.com/jrmatherly/claude-multipass"

  depends_on formula: "jrmatherly/tap/claude-multipass"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Claude Multipass.app"

  zap trash: "~/Library/Preferences/net.matherly.claude-multipass.plist"
end
