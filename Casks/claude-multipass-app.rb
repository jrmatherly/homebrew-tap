cask "claude-multipass-app" do
  version "0.4.0"
  sha256 "27ee3e29e1d24394cc80f55fd542f87d7fb8f38a38e91cb8fd64fbee2c696c1a"

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
