class LeadTime < Formula
  desc "caluculate PR lead time statistics on GitHub"
  homepage "https://github.com/nao1215/leadtime"
  url "https://github.com/nao1215/leadtime/releases/download/v0.0.1/leadtime"
  sha256 "fc846ea0ca86ad60ba49a52292c5b265ee34c11521f7cbdeb4948d15cabab802"

  def install
    bin.install "leadtime"
  end
end
