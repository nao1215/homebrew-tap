# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqluv < Formula
  desc "sqluv - simple terminal UI for DBMS & local CSV/TSV/LTSV"
  homepage ""
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/sqluv/releases/download/v0.3.1/sqly_0.3.1_darwin_amd64.tar.gz"
      sha256 "4e5b424c8c2e477783a0ba56b4bbe0448aafd9cd38f0352d0ca14e0a1afce78b"

      def install
        bin.install "sqly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nao1215/sqluv/releases/download/v0.3.1/sqly_0.3.1_darwin_arm64.tar.gz"
      sha256 "8c0c4c4a6241e45e3990d4ac6cb55a6a556b8720b8ead3ea24acd92018d273c9"

      def install
        bin.install "sqly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/sqluv/releases/download/v0.3.1/sqly_0.3.1_linux_amd64.tar.gz"
        sha256 "6983494180199b74859751f4bd9515a053f3e8a866d0bc85b439ae3052c47bbe"

        def install
          bin.install "sqly"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/sqluv/releases/download/v0.3.1/sqly_0.3.1_linux_arm64.tar.gz"
        sha256 "2cf0e3d5bf2b5ebd257350d6e1879a9d94a6b408601469fd508b845c0b1b92a4"

        def install
          bin.install "sqly"
        end
      end
    end
  end
end
