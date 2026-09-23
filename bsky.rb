# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.4.0/bsky-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8fb3cf80aa28d7ceaf9bdf0353d4b3d9cb0e374b9053a3d036eb3c7ed6a4d64d"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.4.0/bsky-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "d841c34c966aad75f8c8cdb032bfa0f5aba8010f9b0dd1090dceaeb7359bbc39"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.4.0/bsky-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e8e56101fd359715ee95dfaefc14dc77406e4858e58645c7e0d5fa46fe8eae8"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.4.0/bsky-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73c9d9580a8cd0ba9e28ef6cfc05128517231e286181c11c1e77ddbda3bc346b"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
