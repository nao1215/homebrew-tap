# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.12.0/truss-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "3793ef6237944f68ff7b31190ad19c244b474e9e83a538d6daf19f90e7475e49"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.12.0/truss-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "061b4d27f853558c2233d1b6431550b7ca062aa718a7f4dae90bcbb3a5167f99"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.12.0/truss-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f36bbbc47af9c97b641f91f340033050df877ae5228ea7dc8ce25f1d758eda44"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.12.0/truss-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0388a6299ce6f2eb1e3b8eece94825f21dc2437a84782590b8584e42a2ffcc25"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
