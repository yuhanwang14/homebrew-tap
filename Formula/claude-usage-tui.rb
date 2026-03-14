class ClaudeUsageTui < Formula
  desc "btop-style terminal UI for monitoring Claude.ai usage limits in real-time"
  homepage "https://github.com/yuhanwang14/claude-usage-tui"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-aarch64-apple-darwin.tar.gz"
      sha256 "805bb3dad9626a4462566eb9328ea948270a73b6d01c23e38a2d98337576e12b"
    end

    on_intel do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-x86_64-apple-darwin.tar.gz"
      sha256 "6af4b60bd679d6e3c18b0e56fd0789c52ab532d2b29c9c84fc3fde37ef29351e"
    end
  end

  def install
    bin.install "claude-usage-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage-tui --version 2>&1", 0)
  end
end
