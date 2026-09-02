# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.21.0/truss-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "a118d3f2b4eafa1eb985c16c452c3a09e2399d3ea5edb579584c8ce35e94c756"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.21.0/truss-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "edcc79ce586c79c8deca56e8cb75baeb9e3af82d7bf8f97c59a905f85fe3fa0e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.21.0/truss-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e843ee0590d09affa9a9a49da43448d672a416a82bbf097eb03dfa1bb9b9b1c"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.21.0/truss-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0aeba889acd0cf84161cdaa6a4670d3877fc13ffd3412ccee543bdd66365afa"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
