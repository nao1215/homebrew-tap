class Jose < Formula
  desc "CLI tool for JOSE (JSON Object Signing and Encryption)"
  homepage "https://github.com/nao1215/jose"
  url "https://github.com/nao1215/jose/releases/download/v0.0.3/jose"
  sha256 "f05c4e97c5a1bffd6dde1513f9fd838a99e5a59e769c28bafc22782d3d1dd155"

  def install
    bin.install "jose"
  end
end
