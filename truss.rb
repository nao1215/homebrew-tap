# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.20.0/truss-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "146fbe708e0d0710a2404907902988074268424924b900db9f7637d250fb14e6"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.20.0/truss-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "0c7add877f1953d1fee76c1002f17d58e719d9368c89c51d1cd941bf5f362a18"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.20.0/truss-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bf426bf428d3dc1e358f88e43db87874de794732b74cf2bcbe7d60287ea87c1"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.20.0/truss-v0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9396856767ccc7956fc3aed940fbcd5a8252efa5fc9abb284ed2dbf58bf2217"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
