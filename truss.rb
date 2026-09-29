# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.27.0/truss-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "a96e0a5829eb1f6ca24a2719121829cdb5fbf6305809e4d643aa056f02da2994"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.27.0/truss-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "88f5560c5098b4d016fc63dab97af278c130b24e72db6fb67d427a4fa7c14af0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.27.0/truss-v0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06d05b42babfd3aa874f1f4c6bf96d43c8439348abaf1170ca1458f1981c4983"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.27.0/truss-v0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41fb1f558ebe6283777cdb2aead1922dfd977be8bbf33a022ab0fb37c55282f9"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
