# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCliAT08550 < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "0.85.50"
  license "BSL"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.85.50/kurtosis-cli_0.85.50_darwin_arm64.tar.gz"
      sha256 "7826c720eb2460409d2c797fbd69ebbd0e48cf0bf85cde76da787dd1dbeec4c1"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.85.50/kurtosis-cli_0.85.50_darwin_amd64.tar.gz"
      sha256 "e168b392922cfe46a350f694528e9caaaa51099097ad7bbb9d62768698f3d6af"

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
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.85.50/kurtosis-cli_0.85.50_linux_arm64.tar.gz"
      sha256 "4e22545abd0b5bf8fe21a8a744e8e7080d21f2855904317ea972fe8c350689c4"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.85.50/kurtosis-cli_0.85.50_linux_amd64.tar.gz"
      sha256 "6419d1f3a6e6b1c0cd4564697cfcc07dae3ef40679ad22d9c48db42ecbf135a6"

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
