# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.28.0/truss-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "4922940e1c1e2fdf5ee281c674445f8c641169afaeb7cbca1d4e644c6d73323f"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.28.0/truss-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "5567de2dca1f91eb5c353e0babb2f3b3d8d67af11b345cca5493d56d8f771bc8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.28.0/truss-v0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0140aef9dbd22002b114ed9967062f67204e7fb03ffa0cc1adc51ea996e8805b"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.28.0/truss-v0.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4eef468b3f8d21a6bfa13362d5d8403c15497fe0b9d38e493d7a87df44e84b7d"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
