# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.10.1/bsky-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "f7e9e8057a7dc07665a46b2ccf09fee2dfecf88ee069fc903d876d7ce6bb45c4"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.10.1/bsky-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "1950f92b90da1ca5b90b0119eac7a80f5671b6cc218b39cb26986af84f3e04df"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.10.1/bsky-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8544071bc283149aebe9201cdd6b392abac56bf61b8f681ecd17490a25b72c5"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.10.1/bsky-v0.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7eff660b68d4c35b01a14f2203e991d8ccf14917aca8d82c97269bad5965fd49"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
