class Golling < Formula
  desc "Update golang to the latest version"
  homepage "https://github.com/nao1215/golling"
  url "https://github.com/nao1215/golling/releases/download/v0.0.1/golling"
  sha256 "997331c7e772c5ccc88f2bf7d031b5b7b045d26dddaeea6b2ad8c08abb5e9162"

  def install
    bin.install "golling"
  end
end
