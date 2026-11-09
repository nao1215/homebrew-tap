# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.27.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.27.1/truss-v0.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "9813c5fa613a42d111d506de0bd7999ab093a6d73a7bd5b05ab1a63122132d69"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.27.1/truss-v0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "1d0ed870e846656b9273e1ba9c6d9a08d40abd5ac2809762710f10a444d12aba"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.27.1/truss-v0.27.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f61081ef0347d66cf29ca45fb09fb03765b3ef2802b9fb6554fd152c3e9cc5f7"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.27.1/truss-v0.27.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "061ad3293d4e424f82d002dc57aaf691e7ced943ce74c04991033233f138f24b"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
