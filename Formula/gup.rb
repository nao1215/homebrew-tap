class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.22.0/gup"
  sha256 "1ee55748f37b605c2b49a86591c486a00699d22b7f3b22d0dbd1f9cb5e9bf0b1"

  def install
    bin.install "gup"
  end
end
