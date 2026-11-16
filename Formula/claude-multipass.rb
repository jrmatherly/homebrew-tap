class ClaudeMultipass < Formula
  desc "Switch Claude Desktop between claude.ai accounts without an email code"
  homepage "https://github.com/jrmatherly/claude-multipass"
  url "https://github.com/jrmatherly/claude-multipass/archive/refs/tags/v0.15.1.tar.gz"
  sha256 "d055b8a8b258a335ff3f758b34ce9da7911e88682a850db34ce53d9a53941048"
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
