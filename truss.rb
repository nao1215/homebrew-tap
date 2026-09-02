# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.21.1/truss-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "0af6b5b2072907104c2a8053d5b88252b26e660f423dbc791a6452030bd746dd"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.21.1/truss-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "164b18fc5d30481297679fe6ee0d8d8c7065190d0c00be70f0706b9def7d7753"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.21.1/truss-v0.21.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50e45bc9526548f5bb3257bf00e1c940aa6b260b0930016864e52702a5660d61"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.21.1/truss-v0.21.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9fd06295787227da362445ffff2d4a481aeb568d6bb1ea84e45b3618d9195720"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
