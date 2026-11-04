cask "claude-multipass-app" do
  version "0.14.0"
  sha256 "2e0bce238c824f8f0bfe01feb152a9129a62e95267a7862990c21877658ceef6"

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
