# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.9.0/bsky-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "c0ca2e6d1f2aaca86971e2a14b9d007aadc80644170233db25c2c4d35bb3b162"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.9.0/bsky-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "797d3a3de39ffb052456a43b96b679715df3cfd67922d531b391c00059a0fa96"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.9.0/bsky-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddba9973b0a192acef467ec41369c1ad38388733f21641075f81330acd117895"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.9.0/bsky-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e428d4712f585781c59f2002e43793d308591fa506b0468ca5087a85be98b0b"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
