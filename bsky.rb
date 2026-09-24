# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.7.0/bsky-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "d3557c6b1af7ebc2aaf92ec668a37f2657f9740b3eb80088c2c1c8de46fb3cc1"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.7.0/bsky-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a73df155435c5f8740fd0f123a899b626c0ede86323c4898a9bf23bb57c8d10"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.7.0/bsky-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2761173043bfa1d013f518527ebbca74f4a4a588d9b0ca17a6057c65e779974"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.7.0/bsky-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff084108e5ab07b1ed0119f3d58475c46a7325f442521e4fb436465512e62907"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
