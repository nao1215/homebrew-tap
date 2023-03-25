class Jose < Formula
  desc "CLI tool for JOSE (JSON Object Signing and Encryption)"
  homepage "https://github.com/nao1215/jose"
  url "https://github.com/nao1215/jose/releases/download/v0.0.2/jose"
  sha256 "29670c48a4cca13f19142bbb3ac8ecd03dff2e701670f7cc0f4b49c28e2f817c"

  def install
    bin.install "jose"
  end
end
