# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCli < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "0.18.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.18.3/kurtosis-cli_0.18.3_darwin_arm64.tar.gz"
      sha256 "1cd8282337e6b0431d5f9c6a42d484bb69992081efe693097ae58899df0210e3"

      def install
        bin.install "kurtosis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.18.3/kurtosis-cli_0.18.3_darwin_amd64.tar.gz"
      sha256 "0c26f2ff3783d2a5bf9d4a26be845a2e22f27481dfec70497f51b9b6e1d5b36b"

      def install
        bin.install "kurtosis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.18.3/kurtosis-cli_0.18.3_linux_arm64.tar.gz"
      sha256 "fd758be6c16a7d805d0ef12b071b3cf8cfb55267f544e0579408c34dac2228e1"

      def install
        bin.install "kurtosis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.18.3/kurtosis-cli_0.18.3_linux_amd64.tar.gz"
      sha256 "bf3eabd242c04f1a4a3ab8e6567ace44ae60a36a2684763168156eb9ed281168"

      def install
        bin.install "kurtosis"
      end
    end
  end
end
