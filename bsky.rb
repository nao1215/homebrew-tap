# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.6.0/bsky-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "314be6d4f9aefca2004c18d0cb5a7bb10e7ed86d6e95180fdbe90819e0938ddd"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.6.0/bsky-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "542f8c04ddea5da9fe9b96ef0c1f5ff9900b4da4d9020daf447eafac08fa3c27"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.6.0/bsky-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11c82d157cc51acf290d557b0a7b3a3b9aaf13d0cf40900d46e4c3a4289f65d9"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.6.0/bsky-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "984463a611a041d5c22ebed9288362de5ad95b7228f24c8947622fd810c6f4e7"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
