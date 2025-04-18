# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCliAT142 < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "1.4.2"
  license "BSL"

  on_macos do
    on_intel do
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/1.4.2/kurtosis-cli_1.4.2_darwin_amd64.tar.gz"
      sha256 "1570b44f8c491dea39d7baba28aaccdc41c4f4e7768e16ba6b9dcecbed484834"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    on_arm do
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/1.4.2/kurtosis-cli_1.4.2_darwin_arm64.tar.gz"
      sha256 "cdb97ac63a01435e0a192110ec5b8ba6ce7cb65fde92bf979c408543004713b4"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/1.4.2/kurtosis-cli_1.4.2_linux_amd64.tar.gz"
        sha256 "6c84957162d0392ae21c10d84c1b1e2be393fb1651ee486760db1c22694f9c66"

        def install
          bin.install "kurtosis"
          bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
          zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
          fish_completion.install "scripts/completions/scripts/kurtosis.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/1.4.2/kurtosis-cli_1.4.2_linux_arm64.tar.gz"
        sha256 "0dedb85f1aa38ea6d9cf404d989244ee812c06c6690181676e4fe35b79efe412"

        def install
          bin.install "kurtosis"
          bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
          zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
          fish_completion.install "scripts/completions/scripts/kurtosis.fish"
        end
      end
    end
  end

  def caveats
    <<~EOS
      The kurtosis CLI is installed with tab completion support. For more details visit https://docs.kurtosis.com/.
    EOS
  end
end
