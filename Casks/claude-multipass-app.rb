cask "claude-multipass-app" do
  version "0.3.0"
  sha256 "ec5f55dd4ae56b97b2786a786c388e90c68e7ea7ef24630b68e9ea2ddd9573b2"

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
