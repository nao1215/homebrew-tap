class Golling < Formula
  desc "Update golang to the latest version"
  homepage "https://github.com/nao1215/golling"
  url "https://github.com/nao1215/golling/releases/download/v0.0.3/golling"
  sha256 "4e281a837993bd3d72fa76565208aa502fa2479b3fb517a88b952f5e5c6f21e2"

  def install
    bin.install "golling"
  end
end
