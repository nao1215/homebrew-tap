# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.13.1/bsky-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "649d01580165600f9179f73e5974cb580b845bd5cc16f366ffe2cea72f3a4536"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.13.1/bsky-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "257e6e1858744c05a25612bfbe15f16a90e85afad5bffa7f99c9d8b0743f80f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.13.1/bsky-v0.13.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad972e2781a2e5f2dd8bb28d5bfe55f3aee5f10fdf6192a6c3c9c516a5567efe"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.13.1/bsky-v0.13.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed16b49dafa2a4286d1853a112f6d2801cba224dc69dfe93940b72c2485c8390"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
