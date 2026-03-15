# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.11.2/truss-v0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "168ead0740567538a79684b1d5060406541df02e591920fd897deb1c450395e7"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.11.2/truss-v0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "39fd1dded56d2d81ebb6d113280497aeadab9ad0fad6b4fad1a806c7f2d605c7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.2/truss-v0.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c7cf301e3b5bf5f0209365d3de3fc02fd930f96ccc04ac096dd7adf37f74913"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.11.2/truss-v0.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60c97c1f1513b9ef7cb0e3cf3b2320a12341bc1bd4afc032d5d963dbc332ea1f"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
