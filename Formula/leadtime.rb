class LeadTime < Formula
  desc "caluculate PR lead time statistics on GitHub"
  homepage "https://github.com/nao1215/leadtime"
  url "https://github.com/nao1215/leadtime/releases/download/v0.0.2/leadtime"
  sha256 "c47c5554720fb3268ff0c21cb1513734e87033cecf19800ea61f1102a57cebeb"

  def install
    bin.install "leadtime"
  end
end
