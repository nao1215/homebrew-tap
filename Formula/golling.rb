class Golling < Formula
  desc "Update golang to the latest version"
  homepage "https://github.com/nao1215/golling"
  url "https://github.com/nao1215/golling/releases/download/v0.0.2/golling"
  sha256 "3f04499c962e26e845bca301945e5d577e520be5c92f49b25e571db7a16358d6"

  def install
    bin.install "golling"
  end
end
