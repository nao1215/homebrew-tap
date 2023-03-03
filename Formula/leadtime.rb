class LeadTime < Formula
  desc "caluculate PR lead time statistics on GitHub"
  homepage "https://github.com/nao1215/leadtime"
  url "https://github.com/nao1215/leadtime/releases/download/v0.0.3/leadtime"
  sha256 "1a6fe8a2953680578c3c7bc42236964447f80105b4dcabf7ffb5478aa57f2e58"

  def install
    bin.install "leadtime"
  end
end
