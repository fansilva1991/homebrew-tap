class ClaudeSwitch < Formula
  desc "Manage and switch between multiple Claude Code accounts on macOS"
  homepage "https://github.com/fansilva1991/claude-switch"
  url "https://github.com/fansilva1991/claude-switch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b815c34de436ff291c3ea319f8bfdee4bd301f73f4013ad1af99f5a1198b8021"
  license "MIT"
  head "https://github.com/fansilva1991/claude-switch.git", branch: "main"

  depends_on :macos
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "claude-switch", shell_output("#{bin}/claude-switch --version")
  end
end
