class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.21.0/gup"
  sha256 "4cf3673b2d5191324c99e098384820f86c4c9200ca2e3905d662649c3c26cae2"

  def install
    bin.install "gup"
  end
end
