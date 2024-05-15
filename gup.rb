# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gup < Formula
  desc "gup - Update binaries installed by "go install""
  homepage ""
  version "0.26.1"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://github.com/nao1215/gup/releases/download/v0.26.1/gup_0.26.1_darwin_amd64.tar.gz"
      sha256 "62dba8c16c893c27e1c573f89befdc2a1e74eaacd51b43ecbd3254fbac141d63"

      def install
        bin.install "gup"
      end
    end
    on_arm do
      url "https://github.com/nao1215/gup/releases/download/v0.26.1/gup_0.26.1_darwin_arm64.tar.gz"
      sha256 "feeda155c757cd8639aae629345ee76f977192561b9372fa12691fc11957b132"

      def install
        bin.install "gup"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/gup/releases/download/v0.26.1/gup_0.26.1_linux_amd64.tar.gz"
        sha256 "a165d0275b3ecdb463210419201ce08ec5be290e91963be1011d67ab863ca9fa"

        def install
          bin.install "gup"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/gup/releases/download/v0.26.1/gup_0.26.1_linux_arm64.tar.gz"
        sha256 "433039f05226511cfe7909d05abf3ec55a552c3a369db587cc3eb29d127436f5"

        def install
          bin.install "gup"
        end
      end
    end
  end
end
