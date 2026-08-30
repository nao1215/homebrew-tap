# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.15.0/truss-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "5f71e2189c4ebb0ac01e65a367bc51832c844c540676a36e1aa45a5616abf891"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.15.0/truss-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "3ca3bbb8d91da57e6219371c3d1bb0565d913138b50e8c65204bcc07079e15e6"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.15.0/truss-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12d45f9819b152b5a03e1a73700923ca7703c4d48431a98350af1b044e31194b"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.15.0/truss-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "338460b10380eb1e11864eac3d490e6fb1c40078657e713622e00c9b320f0bf8"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
