cask "claude-multipass-app" do
  version "0.14.1"
  sha256 "54badeb1e148aa948156b2ff5bb7eaac3c042ba3666c56e5387608975e0c4e3d"

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
