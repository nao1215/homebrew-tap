# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.12.0/bsky-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "cbc55aaadb98d267b7e3d39b740f79ee99c0b9c3568371240e6f5733432e306f"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.12.0/bsky-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d97d4a5fc9b1fd10c58d0dbc1db0b7da038435277c1cdb6a1710206141820ff"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.12.0/bsky-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1423a7de45bfc9250ce6aac73d540d26ce8955581df03fe0005ee105d165563f"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.12.0/bsky-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bab335df9b6db54fc86d7ddaebee960a2ef436645330617ab35ec4b74fd2d922"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
