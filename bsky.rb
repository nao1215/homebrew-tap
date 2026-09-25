# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.11.0/bsky-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "e4da8a35f972c8b16de11fe67bc65bb9f8a35dfad06369565586439103f361ac"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.11.0/bsky-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "e99a6efd2b1e2658e20735c65463af1aacb3958533ef2f9526312ab000d0d013"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.11.0/bsky-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d02d951b1380dfe91e8b4c13f6fb2ba403838c5ce49e9e3176382974d7b1bb29"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.11.0/bsky-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "637a62537f03335cc7e059ab76dd43588afe88e6b2265a770bb778e61bf8a171"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
