# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.10.0/bsky-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "b3771308af381be5775888af0566da04a69dbf078f7b3758f297b5ba67d0cbbb"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.10.0/bsky-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "b98be3cf4205d6f7400617abc139564797e15f6ddbbb61a2db1491cdc2769880"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.10.0/bsky-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2fbf6537fc2ec1933a07318e4a819ef250e578921d759272261b6877e5d6c89"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.10.0/bsky-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6ca34c6ba3de115a5cadfc0e917819674c64770ebc80322159f7700aa4486d9"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
