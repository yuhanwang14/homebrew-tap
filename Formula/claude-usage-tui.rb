class ClaudeUsageTui < Formula
  desc "btop-style terminal UI for monitoring Claude.ai usage limits in real-time"
  homepage "https://github.com/yuhanwang14/Claude-Usage-TUI"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuhanwang14/Claude-Usage-TUI/releases/latest/download/claude-usage-tui-aarch64-apple-darwin.tar.gz"
      sha256 "b8bcdbc9bebde04162621fcd38e2c2190c90495b1293576ad34cb1b6edf4a20a"
    end

    on_intel do
      url "https://github.com/yuhanwang14/Claude-Usage-TUI/releases/latest/download/claude-usage-tui-x86_64-apple-darwin.tar.gz"
      sha256 "77da8a8a8d247d8aba65eaebf393fdde4f6301d12ad89dfba403aabd85921d3e"
    end
  end

  def install
    bin.install "claude-usage-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage-tui --version 2>&1", 0)
  end
end
