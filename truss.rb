# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.11.1/truss-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "123ebc0192148607308441a6da93257c5ab874e8bfa0537a1654824db2409a4e"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.11.1/truss-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "7c7e75a407c87bf205a19327636b89770e5968efede81a3c83e08e5c68a9319b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.1/truss-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3650840ed77825067db3a463539cbb61bec7b47c9e863bc8c07cdbea101c7a21"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.1/truss-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9132516681ed534b3660ba4f518bfbec2233cab5812dbb3d14ce3cadf42ace86"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
