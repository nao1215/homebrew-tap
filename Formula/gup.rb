class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.18.0/gup"
  sha256 "a1fbf8e8dbb7ca59c8c99b26ca2b91de0036fd0e6ea100a4645fda30455aabf5"

  def install
    bin.install "gup"
  end
end
