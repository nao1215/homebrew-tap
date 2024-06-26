# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqly < Formula
  desc "sqly - eaisly execute SQL against CSV/TSV/LTSV/JSON and Microsoft Excel™ with shell."
  homepage ""
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/sqly/releases/download/v0.8.1/sqly_0.8.1_darwin_amd64.tar.gz"
      sha256 "ed71ce54ad43a6482ca84c2ece83428641b03ee1fae19aff54ab2be085a67fb9"

      def install
        bin.install "sqly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nao1215/sqly/releases/download/v0.8.1/sqly_0.8.1_darwin_arm64.tar.gz"
      sha256 "bea65b3c3a465cdd57f03c278940cb6cd8400f03cf388776a9344772fa2a9a9d"

      def install
        bin.install "sqly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/sqly/releases/download/v0.8.1/sqly_0.8.1_linux_amd64.tar.gz"
      sha256 "4424aca9057585a8e4feb19976b75cc381c2682350345294394f9260aa0126ad"

      def install
        bin.install "sqly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/sqly/releases/download/v0.8.1/sqly_0.8.1_linux_arm64.tar.gz"
      sha256 "a2cba1cc603fd8a7d1f10ffced3189db58f1c90eefdf87b64c7c471c88a828a5"

      def install
        bin.install "sqly"
      end
    end
  end
end
