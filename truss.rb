# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.11.4/truss-v0.11.4-x86_64-apple-darwin.tar.gz"
      sha256 "c174163f04e3b88cfdc96d529e2139ee40ea5a30b697ea59824cfa8e8871bb23"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.11.4/truss-v0.11.4-aarch64-apple-darwin.tar.gz"
      sha256 "5952b33189eb819d39305365840d204a7d30bc96aa74ccdea622be193da63c14"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.4/truss-v0.11.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a3fca4e10fa9aab5d1df0e8c637984521af730354402323ed07f2d639e5b9d9"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.4/truss-v0.11.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28a598fd8071a9478e8de271f2fa39e4b32f4e338322e6b8e8e76ff24d04d360"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
