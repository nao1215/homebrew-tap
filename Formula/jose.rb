class Jose < Formula
  desc "CLI tool for JOSE (JSON Object Signing and Encryption)"
  homepage "https://github.com/nao1215/jose"
  url "https://github.com/nao1215/jose/releases/download/v0.0.4/jose"
  sha256 "326bbd00a7025d8e984000e8b89cce9d670a78158d5cb96d0880122ab1f256c8"

  def install
    bin.install "jose"
  end
end
