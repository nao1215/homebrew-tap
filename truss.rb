# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.24.0/truss-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "87f0bbe2afeb587fa2987141b25d7d385dc2854d95f632054f24262690cda0b2"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.24.0/truss-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "5c053dc296e4448bd93fabe17c81ec4d8f4553f4522bc8f49023121909471ffa"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.24.0/truss-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbf9237b2c90e62425c2e7cc559c3e527a9b8d114dc87ce433634c9b8b32f96a"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.24.0/truss-v0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a455e642ea8e6a0e9b799a59ca8341835c9e8a993ada7abc742ed426ab2f17cb"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
