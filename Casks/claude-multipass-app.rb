cask "claude-multipass-app" do
  version "0.10.2"
  sha256 "2b4ee20a6846c7789ee063fd8faada929e30e6eb6f227e6c212b1fbbeb4f9849"

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
