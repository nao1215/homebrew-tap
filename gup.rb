# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gup < Formula
  desc "gup - Update binaries installed by "go install""
  homepage ""
  version "0.26.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/gup/releases/download/v0.26.0/gup_0.26.0_darwin_amd64.tar.gz"
      sha256 "71192bf0542d83708871281b29419fab84bcca00f37b0221d789ea675273b04a"

      def install
        bin.install "gup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nao1215/gup/releases/download/v0.26.0/gup_0.26.0_darwin_arm64.tar.gz"
      sha256 "45ed49ca639e81b61140f4e6684ad7717be49a6add877f4f222420658aacc8a5"

      def install
        bin.install "gup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nao1215/gup/releases/download/v0.26.0/gup_0.26.0_linux_amd64.tar.gz"
      sha256 "a070ba73d2abc0d803e328c9b95c35b7268a0077bcd62cdd3a992d2889228bef"

      def install
        bin.install "gup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nao1215/gup/releases/download/v0.26.0/gup_0.26.0_linux_arm64.tar.gz"
      sha256 "ad2ce0bdc760b6e3ea96037e12c1af4748e4a8a16a4d969c9cc3e9d59aad70bf"

      def install
        bin.install "gup"
      end
    end
  end
end
