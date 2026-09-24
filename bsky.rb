# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.5.0/bsky-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "c8a42fc5a6c31f443ce28073d87e811d8bab522182b95da94ff74525a5d5fc5b"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.5.0/bsky-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "0676038c769fca619ee4eb1f22615e5eb5401029b98d5cc449a37d05cef3a83f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.5.0/bsky-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "406e8e3d98644e92cbcd1291e59004e6a85f53b00536ec6a939ca25221998517"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.5.0/bsky-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f684500b7ee0fe4d94fa02d79dbb7b9958d3d64fef302989b75101891bf727d8"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
