# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.13.0/bsky-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "2d80568ee83e31c7298f352778dfc336f69bc889e90896adc937922f7d26365d"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.13.0/bsky-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "25151d865e4f1b17c78de90fdbb856f22645729c0adafee8312900df840acb4b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.13.0/bsky-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "737571d3b734c1593a5232d58ea820dc8890bbe7faccd80045d8f49e8f572818"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.13.0/bsky-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59d112043330893b968bb328e7afd649af19c88b391c6e25e1a4c41401a0f21b"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
