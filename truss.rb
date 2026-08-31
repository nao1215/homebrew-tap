# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.18.0/truss-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "400e9afd27cdaa4351b414e4c83c23ef2288008e3ae71f6562070c997ddbeb2e"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.18.0/truss-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "509ca877845639b3ab964a537de4e788cdd7bf9aed52ca43c5f81f16c8a445c8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.18.0/truss-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ce9e28922608a0d4a139b713fbd770e7d7e6070093e64a0db97a494bf2cd12a"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.18.0/truss-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7746e3a78adcd807926513aa41b6c69404b78e834502d9db1e5d7611e7048889"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
