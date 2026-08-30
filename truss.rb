# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.16.0/truss-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe7f504b6f9395278544a43bc0f5384b54d974ab31d90be8facfddeca71ae58f"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.16.0/truss-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "0544c36d2e6725a4010f1f3500ec54972d46e7dc9312e95a54b5d90afe2e16f4"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.16.0/truss-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3448c9e35c4f4dbeb4d4ace5e6097c4e7f67187fc5066d0d900695c3fa15668c"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.16.0/truss-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3e43ce1eaf9c8fa11b9864521967484297e2af9723a2b0ff21b29ed2a21db91"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
