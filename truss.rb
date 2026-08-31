# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.17.0/truss-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "4aa8b89bd8d47e72e43e18653cc6b94c1326523b420e0b9fa055a42f3168fa34"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.17.0/truss-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "a11378da30ff35000870da4a9fb8c1b898a1d9d09c7c85d1d090a3aeca01aa4d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.17.0/truss-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c30eed4c9e5aabf6493781ecb736328a09cf2e9d166267babf18a601c70d57f"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.17.0/truss-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "466cf2cdef107cb04cf5876e76ac274e4ceeb5e44eee0f863f92d103ecbffef2"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
