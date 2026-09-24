# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.7.1/bsky-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "f018dc490e7b9b4a008f44e71c0ae4f4ef21a7d12a2f843efc129d4f4901797d"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.7.1/bsky-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "d3152bc071d8141ccf8fd96a04319b4d82cfef57a290f2d3ac854cc7ffa3e994"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.7.1/bsky-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fa8da9366614f87680b08ae4c12297c9189450f3a51fecb1b2e9281d182224f"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.7.1/bsky-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffdc263b9eed75ee14653943d9866e55943cfc591f77f5d86640d75868f1098e"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
