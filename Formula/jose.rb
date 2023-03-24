class Jose < Formula
  desc "CLI tool for JOSE (JSON Object Signing and Encryption)"
  homepage "https://github.com/nao1215/jose"
  url "https://github.com/nao1215/jose/releases/download/v0.0.1/jose"
  sha256 "d3ab83fcdc770e493e123209e3688f4eaabbe7abc24d6e3a05379e023227b1cc"

  def install
    bin.install "jose"
  end
end
