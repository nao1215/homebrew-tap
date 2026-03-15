# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.11.3/truss-v0.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "0c979323583c59eb8750898ebc3ba712a4c4734dd11486cd39bdd3dc5c0904f0"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.11.3/truss-v0.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "a5d6ced8b4388b8529538cba750da726192143c3e96a7e05f1bcd30b386f1ba4"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.3/truss-v0.11.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21f1906de2799d15b64bc3680602e3e8ef8ded1dca721fcf00f3c284b1eca03a"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.3/truss-v0.11.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d3bf3201d2b03ae634d87b81ca500224bba0269734ab5c47f047815d4db21c8"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
