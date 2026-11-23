cask "claude-multipass-app" do
  version "0.15.3"
  sha256 "7daeff76928d89075d9e32d4920e7d2876d9a139a41ecd590ec7a7285ac35cbc"

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
