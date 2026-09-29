# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.26.1/truss-v0.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "788d5e716cd2392368d420f341e280d001a682f5469a3825d052e26b23718c72"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.26.1/truss-v0.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "1c3ef0814e6695d6bf84b97bd59a99630ca00b019936db325b8826b2e7a81d04"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.26.1/truss-v0.26.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62ec94bad52b28ca8d8fc8d8b91a1bf69318efd905d2bdb9659858c92901770d"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.26.1/truss-v0.26.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ab453ff59fc0362b1e532a7bf3c550dca43b2faff634a23441c99d5d864de45"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
