class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup/releases/download/v0.21.1/gup"
  sha256 "86ede4525cf1426a56af0ca22226f74753501de2778ee1ed07c507e1f143edfd"

  def install
    bin.install "gup"
  end
end
