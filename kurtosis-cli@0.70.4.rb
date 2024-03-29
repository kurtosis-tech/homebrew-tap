# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCliAT0704 < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "0.70.4"
  license "BSL"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.70.4/kurtosis-cli_0.70.4_darwin_arm64.tar.gz"
      sha256 "fa72c4418d8238d2f2cbc967f9acd731e7d4ebf10cc1c76d54f19f307dbcc203"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.70.4/kurtosis-cli_0.70.4_darwin_amd64.tar.gz"
      sha256 "de736890df48fbd99b62ecadc301115b647f06ee9190c8e9e68774fd4c39ebec"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.70.4/kurtosis-cli_0.70.4_linux_arm64.tar.gz"
      sha256 "0f941dae3aefd6c9cc4d6e5d87afcf9bf2c74896001f6497ca7e273df3292f9d"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.70.4/kurtosis-cli_0.70.4_linux_amd64.tar.gz"
      sha256 "460f48212e77e6da6db7c58761748154ab879ad944d354254ad25e8a46162ca4"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
  end

  def caveats
    <<~EOS
      The kurtosis CLI is installed with tab completion support. For more details visit https://docs.kurtosis.com/.
    EOS
  end
end
