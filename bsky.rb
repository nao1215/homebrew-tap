# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.0/bsky-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "8aa857ba72050d294d7a2f255e2524e229f9dbb086fbd88c6a4aebb7c9f2f355"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.0/bsky-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "ec311c4246b37a1ce040038b4ca79ac25056a54fc410515fcf80b00eddf6f350"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.0/bsky-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66485848e969cf00ce8638ce023d2b43816f420a88fc9eb94582f8b1cb08a934"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.0/bsky-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f680c2819a8c6f4044b372c19b4fc51013ab913c43ffb0f4c3eb72883e6bfd7"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
