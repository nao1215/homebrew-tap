class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.20.1/gup"
  sha256 "d20ca810ccf571c034ef20f0f06a3bcf4a136836c680e3642598c15ee057816e"

  def install
    bin.install "gup"
  end
end
