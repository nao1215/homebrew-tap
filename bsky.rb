# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.11.1/bsky-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "5f0168d27facd1d5a4f5da88993f21aff2f02a93f24d1e816abcd58deda2170c"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.11.1/bsky-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "b53fe83e12b948e2ccb66d23270227d6d8c479a8eabdd0f74f864a8350a08ae5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.11.1/bsky-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "070ef2481ff55631714b3df6e2b01b9ee15ca8d27ee1bddf0fba7d0da2cb7bd1"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.11.1/bsky-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e66df3895f9052238ccf159b1c5c5bf492f89eb1bd652d8921bbd65bb8bc8639"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
