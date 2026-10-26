cask "claude-multipass-app" do
  version "0.3.1"
  sha256 "d37419f427762d7f0e9b42f6bb538908190d7c55418eafc741dba2833fa3ac00"

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
