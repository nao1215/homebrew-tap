class Golling < Formula
  desc "Update golang to the latest version"
  homepage "https://github.com/nao1215/golling"
  url "https://github.com/nao1215/golling/releases/download/v0.0.4/golling"
  sha256 "5b6f7a765d155cf15d142387eb79e75f4227933434e316b22ccf9f846df56364"

  def install
    bin.install "golling"
  end
end
