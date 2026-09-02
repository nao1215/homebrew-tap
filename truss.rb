# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.22.0/truss-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "94e5e083e3280b7de7dd934d80e8278c893470d94344b4346f8f3a32239e0b6d"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.22.0/truss-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e9719615335dce2c972de1b8e461cb6cdaed5912ed089faf63e0073b800ed1c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.22.0/truss-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "628ece294bcab5867fcea2993221335b91abed465ea2da91333334a63b1a5cf3"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.22.0/truss-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1c0d7778dc635df3ef29cd1f36156a2ae7d6927430d05ec4ff607e951d38e6b"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
