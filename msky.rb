# typed: false
# frozen_string_literal: true

class Msky < Formula
  desc "Misskey client for the terminal that draws pictures and videos inline"
  homepage "https://github.com/nao1215/misskey-terminal-client"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/misskey-terminal-client/releases/download/v0.1.0/msky-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5d005d21dacb90acd8e3a4b7eea84ed236e4619507ce300f50756c321536367f"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/misskey-terminal-client/releases/download/v0.1.0/msky-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f691133ade3fb747504ff59d97e8da2eb7f27d6abe34866e020c896e63f0d886"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/misskey-terminal-client/releases/download/v0.1.0/msky-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15d3b68ceb856461480d7f52db8dbde26137ee7915f702ac6565803750465bbd"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/misskey-terminal-client/releases/download/v0.1.0/msky-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccd60012d04c90cd39f6960dfbc62a84a7edc8535e80971e7188b0a48c347a23"
    end
  end

  def install
    bin.install "msky"
  end

  test do
    assert_match "msky #{version}", shell_output("#{bin}/msky --version")
  end
end
