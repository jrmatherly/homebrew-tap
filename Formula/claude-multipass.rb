class ClaudeMultipass < Formula
  desc "Switch Claude Desktop between claude.ai accounts without an email code"
  homepage "https://github.com/jrmatherly/claude-multipass"
  url "https://github.com/jrmatherly/claude-multipass/archive/refs/tags/v0.10.1.tar.gz"
  sha256 "73f07d03a65bd9760b9c4b56c21e09c206b10a5f0ab8037c334999a86587dc0d"
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
