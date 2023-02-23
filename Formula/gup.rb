class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.17.1/gup"
  sha256 "d7f50132cfb4c296d35beb330a28f5ae59441d841f000cc960ce21eadee91386"

  def install
    bin.install "gup"
  end
end
