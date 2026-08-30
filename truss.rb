# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.13.0/truss-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "31830c12fcfbca243fd74d1d130996337881816a7f9c68356dee78531dc6cfac"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.13.0/truss-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "c77898f702e5dd3a539c97856d8b0a77601e441b8d985493f1dd31b0363ab83a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.13.0/truss-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f76cc816a9252f6ddfb5abaed31958bfb6125e30fb6d81f83e6f7bfaf71ffced"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.13.0/truss-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4af3db025912c6e0be63375f9a08e45c5cabf6a073c110d299dfd005befb13a3"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
