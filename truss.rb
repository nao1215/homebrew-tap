# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.23.0/truss-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "a1301681d9ae1280a764dc56a0fa92df1c5e16daadeb43f80150b7acdfdbd1cc"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.23.0/truss-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "95d175ab8e4134929518643cc5d73d68bfc53e38abc58bb313a233615cdb9ccb"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.23.0/truss-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f49e997f2c0a12a963dc669231ad662f8a5cdface31b817ea57fc346b330d34c"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.23.0/truss-v0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13c23af7e7b75372f2a01b27d0b3bc6303a2341cca56083a76912dc6a9975aed"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
