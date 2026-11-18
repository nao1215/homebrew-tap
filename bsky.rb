# typed: false
# frozen_string_literal: true

class Bsky < Formula
  desc "Bluesky client for the terminal that shows pictures and videos inline"
  homepage "https://github.com/nao1215/bluesky-terminal-client"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.1/bsky-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "0dfbb2f0600c3629e4650fb9eebc7b5bccb3b9b42fe4ea7cfdf57ddea4876959"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.1/bsky-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "d007ef10e4417fd17f94365bd6edbd84678dcd5d516aa974497c93ff7b57d2eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.1/bsky-v0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cf60f676f6007a7a2adf3f0997ed1eff73b73f81d91c08a926fa3684fb7de40"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/bluesky-terminal-client/releases/download/v0.14.1/bsky-v0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82f74ebc33587c4239de9db6ee75b6a4740fd765f631da107b24a707efdc7cb7"
    end
  end

  def install
    bin.install "bsky"
  end

  test do
    assert_match "bsky #{version}", shell_output("#{bin}/bsky --version")
  end
end
