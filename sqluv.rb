# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqluv < Formula
  desc "sqluv - simple terminal UI for DBMS & local CSV/TSV/LTSV"
  homepage ""
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/sqluv/releases/download/v0.2.3/sqly_0.2.3_darwin_amd64.tar.gz"
      sha256 "c7e08632ce58e21b82352c4ee374e827898afb9f3bf93d2ad40b0f46b7250ddd"

      def install
        bin.install "sqly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nao1215/sqluv/releases/download/v0.2.3/sqly_0.2.3_darwin_arm64.tar.gz"
      sha256 "8f167d58432b5b8077794dd5a461852b33e596cfcddab1b52bbc814fb059ee9b"

      def install
        bin.install "sqly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/sqluv/releases/download/v0.2.3/sqly_0.2.3_linux_amd64.tar.gz"
        sha256 "83ab24eb24bb0533e24e4a4af000853b3f52d5e28554713caafd1f8cc34dec05"

        def install
          bin.install "sqly"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/sqluv/releases/download/v0.2.3/sqly_0.2.3_linux_arm64.tar.gz"
        sha256 "403662942792609661c834fc3b3982b41bb3cfc85ccd4d59b6d2c91376d08876"

        def install
          bin.install "sqly"
        end
      end
    end
  end
end
