class ClaudeMultipass < Formula
  desc "Switch Claude Desktop between claude.ai accounts without an email code"
  homepage "https://github.com/jrmatherly/claude-multipass"
  url "https://github.com/jrmatherly/claude-multipass/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "b4207570ecff4339b0801f0b209559c6a01dcea95fc2c2d8df362be765e3e296"
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
