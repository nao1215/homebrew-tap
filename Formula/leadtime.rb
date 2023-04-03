class Leadtime < Formula
  desc "caluculate PR lead time statistics on GitHub"
  homepage "https://github.com/nao1215/leadtime"
  url "https://github.com/nao1215/leadtime/releases/download/v0.0.4/leadtime"
  sha256 "0747f6ba153fcde0056aa2aa5e69ff9c39d01d26520dc80f44f2381e356a4b68"

  def install
    bin.install "leadtime"
  end
end
