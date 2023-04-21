# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCliAT0758 < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "0.75.8"
  license "BSL"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.75.8/kurtosis-cli_0.75.8_darwin_arm64.tar.gz"
      sha256 "3a8977cd35cfbd7283074e7bc2ae57b768e07f52b3c168a5b3f16ef2fe08381f"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.75.8/kurtosis-cli_0.75.8_darwin_amd64.tar.gz"
      sha256 "0fb45ede3dd4889437e73208789c47b1408237b7927fa0681d04cfe12910e920"

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
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.75.8/kurtosis-cli_0.75.8_linux_arm64.tar.gz"
      sha256 "f821e098f7f0bc05caa7af40db57c5ebf31063ab8b25e344e36d2e8802771baf"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.75.8/kurtosis-cli_0.75.8_linux_amd64.tar.gz"
      sha256 "922caa67fd5f0ffe5001e27e881da589e5e091f7761e3af46507341f222edbb7"

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
