# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.1.0/bsky-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4f6f30f4009df638ab02217dffd08eb9365cd1481468f35813a6e59f373a3cac"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.1.0/bsky-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "74bbe632c8690ada320200743aa02aa588a7217ca9766d7ea40b161e2f3cb0b9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.1.0/bsky-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd6bc220858f4b21d0f808d9b51fc93e515622694a14656051ef040371bf3234"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.1.0/bsky-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "84c02bcaa2cab60add68495dd46033a57d9f0db6fbd250e3345bb3e747b28012"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
