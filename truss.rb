# typed: false
# frozen_string_literal: true

class Truss < Formula
  desc "Rust image toolkit for CLI, HTTP, and WASM workflows"
  homepage "https://github.com/nao1215/truss"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/truss/releases/download/v0.14.0/truss-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "3768188b21c04f0153b9eb856553fc140dc83559f876f4d6f6d766d607eac6e8"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/truss/releases/download/v0.14.0/truss-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "5b2ab54802b47c37ef060e1def1bd015c4e66bca67e8ae9f018f3d9ee501ccd1"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.14.0/truss-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00bf48f246d65fdea27bf3e2073389da071005d4878f358175e01ad37a87591e"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/truss/releases/download/v0.14.0/truss-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55f626098ea2ec7f7c1db2f1562cad2fd26b2cdec7aa4922c1ed20839222aa1b"
    end
  end

  def install
    bin.install "truss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/truss --version")
  end
end
