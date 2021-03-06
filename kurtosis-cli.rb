# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCli < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "0.22.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/v0.22.1/kurtosis-cli_0.22.1_darwin_arm64.tar.gz"
      sha256 "b9ef1fa5917a691b809446e3af774637162e410b7f0d7e24c9e9faf902550cc6"

      def install
        bin.install "kurtosis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/v0.22.1/kurtosis-cli_0.22.1_darwin_amd64.tar.gz"
      sha256 "0470e8e4c7b36aec729844bcd013cbdbbe21d05b81e555f672a79cb066b46058"

      def install
        bin.install "kurtosis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/v0.22.1/kurtosis-cli_0.22.1_linux_arm64.tar.gz"
      sha256 "afd9a3ca0818046afca531a0808e7ff77347e0f1047471d46f03e97ffc07f021"

      def install
        bin.install "kurtosis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/v0.22.1/kurtosis-cli_0.22.1_linux_amd64.tar.gz"
      sha256 "b579ded462f3db613314d718d97b482c223b60d25a102f262994c2bfc613a950"

      def install
        bin.install "kurtosis"
      end
    end
  end
end
