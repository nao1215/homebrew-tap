class Gup < Formula
  desc "Update binaries installed by 'go install' with goroutines."
  homepage "https://github.com/nao1215/gup"
  url "https://github.com/nao1215/gup.git",
    tag: "v0.24.3",
    revision: "9f86d80c9f12949a94c2751b53b62fa70ea7d5ed"
  sha256 "f10deca48d1de65f0eb3198ce215ab7a7256f3e78055a430f4bb7347ee03e2ac"
  license "Apache License 2.0"
  head "https://github.com/nao1215/gup.git", branch: "main"

  bottle do
  end

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/nao1215/gup/internal/cmdinfo.Version=#{version}
    ]

    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    assert_match "gup version #{version.to_s} (under Apache License version 2.0)", shell_output("#{bin}/gup version 2>&1")
  end
end
