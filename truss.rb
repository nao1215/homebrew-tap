# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.11.5/truss-v0.11.5-x86_64-apple-darwin.tar.gz"
      sha256 "049a0a8758f76b8cda1e0c2988cb3c653c52438651e0d9a4c27e95a80c93dff9"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.11.5/truss-v0.11.5-aarch64-apple-darwin.tar.gz"
      sha256 "b1ae53f35f02a1fbecaa8fcaa3a903ef6a4dc58fb366179dea23e41f68075dee"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.5/truss-v0.11.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15282399a1568e97a1873d07e5251d9d3161d951e13eea6bcd6604907116d8e6"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.5/truss-v0.11.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42aa51de4b3021328a634fcac7618f27f4e6f313bec4d6e859827f3e3b236e23"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
