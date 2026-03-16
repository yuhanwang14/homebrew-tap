class ClaudeUsageTui < Formula
  desc "btop-style terminal UI for monitoring Claude.ai usage limits in real-time"
  homepage "https://github.com/yuhanwang14/claude-usage-tui"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-aarch64-apple-darwin.tar.gz"
      sha256 "6141131fbb5012af88a0e62be6bdc4eb2d64f843981bfe330bd4a05fe30cf483"
    end

    on_intel do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-x86_64-apple-darwin.tar.gz"
      sha256 "af474af35fd72ddb10951a2d9b314fb47c4149112f23a67d83b16f72f46c371e"
    end
  end

  def install
    bin.install "claude-usage-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage-tui --version 2>&1", 0)
  end
end
