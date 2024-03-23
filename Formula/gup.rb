class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.24.2/gup"
  sha256 "f10deca48d1de65f0eb3198ce215ab7a7256f3e78055a430f4bb7347ee03e2ac"

  def install
    bin.install "gup"
  end
end
