# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqluv < Formula
  desc "sqluv - simple terminal UI for DBMS & local CSV/TSV/LTSV"
  homepage ""
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/sqluv/releases/download/v0.1.7/sqly_0.1.7_darwin_amd64.tar.gz"
      sha256 "280b210c47704cbad4bb413a4b04ad9dd2cb6268b92cf2ec8b4ff64436ad3c5b"

      def install
        bin.install "sqly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nao1215/sqluv/releases/download/v0.1.7/sqly_0.1.7_darwin_arm64.tar.gz"
      sha256 "70abce16ae4a52fc339da725cf1af8f03206d6983c835034e575cf524aa8702c"

      def install
        bin.install "sqly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/sqluv/releases/download/v0.1.7/sqly_0.1.7_linux_amd64.tar.gz"
        sha256 "3ba6945ab4f9cb6a503421c22f7eb7926b7f2fe33c82960cbe677c5e11880ea7"

        def install
          bin.install "sqly"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/sqluv/releases/download/v0.1.7/sqly_0.1.7_linux_arm64.tar.gz"
        sha256 "a6fe9e521d724d782f08ef0b9abde16b6527332ba9e8422976d48f0f580f1c97"

        def install
          bin.install "sqly"
        end
      end
    end
  end
end
