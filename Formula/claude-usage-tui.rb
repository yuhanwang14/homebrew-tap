class ClaudeUsageTui < Formula
  desc "btop-style terminal UI for monitoring Claude.ai usage limits in real-time"
  homepage "https://github.com/yuhanwang14/claude-usage-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-aarch64-apple-darwin.tar.gz"
      sha256 "da4e77055b4ba2f0d99ba6828d3b9805b3cf8fd846218b2a17a5e4e2d8fc826b"
    end

    on_intel do
      url "https://github.com/yuhanwang14/claude-usage-tui/releases/latest/download/claude-usage-tui-x86_64-apple-darwin.tar.gz"
      sha256 "c5b4fd9d80842ed8d8304746d273c3ddd6c81453c7ee5eb4719604a1371cc51b"
    end
  end

  def install
    bin.install "claude-usage-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-usage-tui --version 2>&1", 0)
  end
end
