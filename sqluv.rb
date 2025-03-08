# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqluv < Formula
  desc "sqluv - simple terminal UI for DBMS & local CSV/TSV/LTSV"
  homepage ""
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/sqluv/releases/download/v0.1.2/sqly_0.1.2_darwin_amd64.tar.gz"
      sha256 "40ba4fda78923811090db99f65a7d497d73d81aed2b4a0400774a3230c82d992"

      def install
        bin.install "sqly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nao1215/sqluv/releases/download/v0.1.2/sqly_0.1.2_darwin_arm64.tar.gz"
      sha256 "10ddd133b4d3e8d3077e1661861cfffd218280f44fa5f5e060d386e7c43a968b"

      def install
        bin.install "sqly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/sqluv/releases/download/v0.1.2/sqly_0.1.2_linux_amd64.tar.gz"
        sha256 "f31f0008cf8fdb57811cbbea59708ba1a9ffd3210805fe00bc657a767c4335af"

        def install
          bin.install "sqly"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/sqluv/releases/download/v0.1.2/sqly_0.1.2_linux_arm64.tar.gz"
        sha256 "8e3386570bed08727bbdd16f37f2f642044621761d96d8e431725f14914080d5"

        def install
          bin.install "sqly"
        end
      end
    end
  end
end
