# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.2.0/bsky-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "733ff76d5a79ba4a230195702d728aa30c73a248706e8de63ffc0e8dc737f8c5"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.2.0/bsky-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4c34093adc60778961d2a18a4b2b79b0e316df9bf90319cb99105cb71ee0b92a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.2.0/bsky-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81e8d8e1c15eb97c5387b86a8ad344abd352586f8216e3ec9e6adbb1094e4278"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.2.0/bsky-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22541343caba4805839877792c154e6e24bed203032694f0ab9927d9c3f5024f"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
