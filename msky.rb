# typed: false
# frozen_string_literal: true

class Msky < Formula
  desc "Misskey client for the terminal that draws pictures and videos inline"
  homepage "https://github.com/nao1215/misskey-terminal-client"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/misskey-terminal-client/releases/download/v0.1.1/msky-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "b4c5b55322731dddebef1568bad0df3577278f04c102ee1114cf79a102e59c7e"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nao1215/misskey-terminal-client/releases/download/v0.1.1/msky-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "fafa8280381ab88a6ad36b009cdb427be6daa2b484473dfa66af072f4ed885e0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/misskey-terminal-client/releases/download/v0.1.1/msky-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b67961be12c34391a52f20b31431b5c9ecd181656031989c30ac4b565db6f34c"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/misskey-terminal-client/releases/download/v0.1.1/msky-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1d260744e590bd0303082307e97ae9f89fba7ae4c5d89076831c54267f3f676"
    end
  end

  def install
    bin.install "msky"
  end

  test do
    assert_match "msky #{version}", shell_output("#{bin}/msky --version")
  end
end
