class ClaudeUsageTui < Formula
  desc "btop-style terminal UI for monitoring Claude.ai usage limits in real-time"
  homepage "https://github.com/yuhanwang14/claude-usage-tui"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-aarch64-apple-darwin.tar.gz"
      sha256 "91f9d65759c83cfe9ccf6364c2d7199d77facb931093eac8b526604d2ae560e0"
    end

    on_intel do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-x86_64-apple-darwin.tar.gz"
      sha256 "1abaf991ab02dcb1188a8de90b99aad0921550c838a7a2e8a10dba5c0e607cc2"
    end
  end

  def install
    bin.install "claude-usage-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage-tui --version 2>&1", 0)
  end
end
