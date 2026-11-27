# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.15.0/bsky-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "8aaffc8b60d334d8e281c9686430bd41c2305d1691cb0ad24959f7298dd1af45"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.15.0/bsky-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "e67bb4358fd655443c77569afef26c927194f2005bf046dc47509aaaa2d540b0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.15.0/bsky-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7156ef59b970fd7ad8ea4f62c67670d291ea7f529828b3d8143c4070aa561c59"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.15.0/bsky-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df1c1a4599ba68dce99ff4596409aef89627b0f77521617a18e24626e5bb5608"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
