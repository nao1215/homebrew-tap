# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.25.0/truss-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "c162813e78ecd1a006f769675862785a9ad92aca055938b613dd7d111f916439"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.25.0/truss-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "7602a569643a036a6475d7a7e9638bfe8b9994c51d31bed258494a50ea5d4aed"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.25.0/truss-v0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3bc5498587804d7307338a4818d22d4993dc70329844004424655e24773e62d"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.25.0/truss-v0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d681d667228aa4a38ba7bd7e4692d11a0d821557e0af94684026535ff41b082"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
