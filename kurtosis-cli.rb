# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCli < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "0.3.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.3.3/kurtosis-cli_0.3.3_darwin_amd64.tar.gz"
      sha256 "6ef7e49df70c4b5a0c471b8f95922770bb9e073dde33c8252f63b15e7f64aebc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.3.3/kurtosis-cli_0.3.3_darwin_arm64.tar.gz"
      sha256 "6d24f64e415b20d15aeb33c3a479268bea57da14fe648932ebe200826f849fd8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.3.3/kurtosis-cli_0.3.3_linux_amd64.tar.gz"
      sha256 "a8e9e429b687ce7adab5f4fc624282f1bca50263730fa3449fccb5cd465eaeb0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.3.3/kurtosis-cli_0.3.3_linux_arm64.tar.gz"
      sha256 "527c03be9f85c9fec23e0f8a91834c1c2ec0ba456889bb7191d67ca500523381"
    end
  end

  def install
    bin.install "kurtosis"
  end
end
