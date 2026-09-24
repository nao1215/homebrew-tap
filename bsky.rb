# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.8.0/bsky-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "e1abed462ee14a0d65882ad124c9727624adc898fffa399efd7b6ab218531a38"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.8.0/bsky-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f12a955132602a9a1fe4b3ab11e9b3451ed730360c64d1c04e81dd4355ce135"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.8.0/bsky-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9ecd617d27876d9321337905c8bad91f5afeb75ad56850bb69cf0bad404fab2"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.8.0/bsky-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "549cc130ccb1b7ec7bafb4df80be398afae10021fbfd0c61df386a9eb9cd1f56"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
