# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCliAT0827 < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "0.82.7"
  license "BSL"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.82.7/kurtosis-cli_0.82.7_darwin_arm64.tar.gz"
      sha256 "a3f03ddd2397e5c6d2f5cec24409c80415874b529aeb0932caa044bbe834a64f"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.82.7/kurtosis-cli_0.82.7_darwin_amd64.tar.gz"
      sha256 "fcb0de499cb0399a5d3dfbc9ffd7b4360812e02c96d306eb96aa70926ac4ec9f"

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
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.82.7/kurtosis-cli_0.82.7_linux_arm64.tar.gz"
      sha256 "0d5acd142b5b38186723bdd1b56d52f206355e1cdda0ed11ef4a96665a77decf"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.82.7/kurtosis-cli_0.82.7_linux_amd64.tar.gz"
      sha256 "edf9aec41815f70dd294c3fd9c5613748594874831a3ea68c29d1c36f8705ae1"

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