cask "claude-multipass-app" do
  version "0.10.1"
  sha256 "a4b82c51252cf4001731d9e6f01a199a6174455b33ab57822da12f825f2ccb5d"

  url "https://github.com/jrmatherly/claude-multipass/releases/download/v#{version}/claude-multipass-app_#{version}_arm64.dmg"
  name "Claude Multipass"
  desc "Menu bar app to switch Claude Desktop between saved claude.ai accounts"
  homepage "https://github.com/jrmatherly/claude-multipass"

  depends_on formula: "jrmatherly/tap/claude-multipass"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Claude Multipass.app"

  zap trash: [
    "~/Library/Caches/net.matherly.claude-multipass",
    "~/Library/HTTPStorages/net.matherly.claude-multipass",
    "~/Library/Preferences/net.matherly.claude-multipass.plist",
  ]
end
