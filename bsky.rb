# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.2/bsky-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "dc01ab7add25ad3e879d4271eaee8243e626dbb8b5ad56e15771d270ebbc6f31"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.2/bsky-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "d27e239802f599d4efc51cb780b83edb1f62735506e636d875fb37bbda43f478"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.2/bsky-v0.14.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c647e4668b61f70bf2ce4f27c087ca457ffd5ad03d391770fe0e70b3a096a600"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.2/bsky-v0.14.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2771e83e9cc38514b4aa1408410924b1378d97dc5021ac62bf9ee4362ec9f40f"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
