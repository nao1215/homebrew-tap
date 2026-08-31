# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.19.0/truss-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "79b0029944f09287b61b0f7bc38ce7c2f4f4abf1f390c671216b3076c7c010da"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.19.0/truss-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "bf70e8d583dc7e4ab1a8f9f52a2e544b3a712c290ccb5464b37442b7fee53db9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.19.0/truss-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fc4d2958cdad045a45a33d18cdc5a940c3f4df966082bbb48d2b7ed6cc62e3f"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.19.0/truss-v0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a1f08d800dc5e7e6faeaa83141ab7f38e9e6bf343ecf991614889f518646c21a"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
