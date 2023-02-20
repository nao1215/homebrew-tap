class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.17.0/gup"
  sha256 "dc5030a6ec0e6a4360cebe8471ce028a1cf0e926d85f77a764249c8bc552e4c8"

  def install
    bin.install "gup"
  end
end
