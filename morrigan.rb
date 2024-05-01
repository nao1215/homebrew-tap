# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Morrigan < Formula
  desc "morrigan - Penetration Tool Set"
  homepage ""
  version "0.0.15"
  license "MIT"
  depends_on :linux

  if Hardware::CPU.intel?
    url "https://github.com/nao1215/morrigan/releases/download/v0.0.15/morrigan_0.0.15_linux_amd64.tar.gz"
    sha256 "3e75df2f23dc0ae27c62819bad39c2d723d4baed29b78ea3993cb9bcf166125c"

    def install
      bin.install "morrigan"
    end
  end
end
