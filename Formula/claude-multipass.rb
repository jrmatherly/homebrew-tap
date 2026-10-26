class ClaudeMultipass < Formula
  desc "Switch Claude Desktop between claude.ai accounts without an email code"
  homepage "https://github.com/jrmatherly/claude-multipass"
  url "https://github.com/jrmatherly/claude-multipass/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "6f1e4c13fa86a803b2557e115f5043bc06ef8180af9413602b955592c5397f3e"
  license "MIT"
  head "https://github.com/jrmatherly/claude-multipass.git", branch: "main"

  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/claude-multipass"
    pkgshare.install "raycast"
    doc.install "README.md", "CHANGELOG.md", "docs"
  end

  def caveats
    <<~EOS
      fzf is optional: `brew install fzf` enables the picker (a bare `claude-multipass`).
      Raycast script commands: copy them to a folder you own first, since this path
      changes on every upgrade and the macOS picker hides /opt:
        mkdir -p ~/.config/claude-multipass/raycast && cp -R #{pkgshare}/raycast/. ~/.config/claude-multipass/raycast
      then add ~/.config/claude-multipass/raycast under Raycast's Script Commands
      settings (Cmd+Shift+G in the picker).
    EOS
  end

  test do
    assert_match "claude-multipass", shell_output("#{bin}/claude-multipass --help")
  end
end
