cask "claude-multipass-app" do
  version "0.5.0"
  sha256 "8e3c5bd0d8dc1e53d9f63254ea51e4257f32843c14cae78750421ac2533c11f7"

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
