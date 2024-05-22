# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gup < Formula
  desc "gup - Update binaries installed by 'go install'"
  homepage ""
  version "0.26.2"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://github.com/nao1215/gup/releases/download/v0.26.2/gup_0.26.2_darwin_amd64.tar.gz"
      sha256 "abfc31be641a20e7b0e2b0405eb1a4f2b15f6603ad1f50194682b19fba1d6192"

      def install
        bin.install "gup"
      end
    end
    on_arm do
      url "https://github.com/nao1215/gup/releases/download/v0.26.2/gup_0.26.2_darwin_arm64.tar.gz"
      sha256 "97493c62437d994c78ee8dd863fb1db25234a2df498a68fc838488c7eafc3898"

      def install
        bin.install "gup"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/gup/releases/download/v0.26.2/gup_0.26.2_linux_amd64.tar.gz"
        sha256 "47fe1a4091dc44587eb88dc02643fe8f4621c900a3de42a0f7fba8b7ac5734d2"

        def install
          bin.install "gup"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nao1215/gup/releases/download/v0.26.2/gup_0.26.2_linux_arm64.tar.gz"
        sha256 "32c5b802da7de50ed9195f633f790a6cd8479e94c86a2d9bd48d8baae9f06482"

        def install
          bin.install "gup"
        end
      end
    end
  end
end
