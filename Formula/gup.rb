class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.19.0/gup"
  sha256 "d3784f97b65b5d1565c9bcdaee38e1586abe9865d970204af03fa525672fb0e3"

  def install
    bin.install "gup"
  end
end
