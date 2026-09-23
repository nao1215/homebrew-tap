# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.3.0/bsky-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "cae50c19fcf21fb32e4f19e59a6c90f501c8f6fc0abf6b359a410a7daccf7d42"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.3.0/bsky-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "bf69254c93f56fec192ef95116d4c88ae615e06124787b9b3a97e78eba68c1ce"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.3.0/bsky-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2de3a6f6cb4385888a23bb4abfd668dea404bc8f848340880f25235406d203c"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.3.0/bsky-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd2b975116a899a5c311ac42cfdf649da598288a4cbf9f3e6bfc6dbc6f5467f9"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
