class ClaudeUsageTui < Formula
  desc "btop-style terminal UI for monitoring Claude.ai usage limits in real-time"
  homepage "https://github.com/yuhanwang14/claude-usage-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-aarch64-apple-darwin.tar.gz"
      # sha256 will be filled after the first release is published
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-x86_64-apple-darwin.tar.gz"
      # sha256 will be filled after the first release is published
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "claude-usage-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage-tui --version 2>&1", 0)
  end
end
