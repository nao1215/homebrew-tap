class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.17.0/gup"
  sha256 "6cf41058bd05ca549fe7d3fbfdd5cc33955e2b80df5395e56b8f088e49db0f84"

  def install
    bin.install "gup"
  end
end
