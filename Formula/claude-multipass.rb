class ClaudeMultipass < Formula
  desc "Switch Claude Desktop between claude.ai accounts and keep every account's Code sessions"
  homepage "https://github.com/jrmatherly/claude-multipass"
  url "https://github.com/jrmatherly/claude-multipass/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f4ba18f7f1af5aa43dc8ff8d8d9725db607bc1531f1e29602725ab93b06cef0d"
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
      The Raycast script commands are in #{pkgshare}/raycast; add that directory under
      Raycast's Script Commands settings.
    EOS
  end

  test do
    assert_match "claude-multipass", shell_output("#{bin}/claude-multipass --help")
  end
end
