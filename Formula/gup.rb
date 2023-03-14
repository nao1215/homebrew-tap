class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.20.0/gup"
  sha256 "2263e59b0b7149460bc10eb159742aa433cdcc8eb1bef204bb21b237d5d63c69"

  def install
    bin.install "gup"
  end
end
