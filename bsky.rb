# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.1.1/bsky-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "de1c9d3838efd1af58e99906d50230c6fa2ccbc462eca731c5344ef772d202b3"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.1.1/bsky-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "5bfb6c46788bca35b8e3577c3a72d0872b667db41bccf43f5c3195e9ea6f659f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.1.1/bsky-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ba147208d3680c2c7d0a9c1d6b9f7a61047925e8105c7ad0dacfbde420cefd3"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.1.1/bsky-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcfc278aaa064ebf39d2365719da555d4097c606642b6bb0065e5214bc77dadf"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
