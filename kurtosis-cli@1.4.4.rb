# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCliAT144 < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "1.4.4"
  license "BSL"

  on_macos do
    on_intel do
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/1.4.4/kurtosis-cli_1.4.4_darwin_amd64.tar.gz"
      sha256 "dfcd7a3e20801ee04f378aac147816718168ba20b6dd911cef36ff816461e858"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    on_arm do
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/1.4.4/kurtosis-cli_1.4.4_darwin_arm64.tar.gz"
      sha256 "1a9287bdc4ee977158aea02c3d99a03495ce4916983c3b7a0c905cf36b313506"

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
        url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/1.4.4/kurtosis-cli_1.4.4_linux_amd64.tar.gz"
        sha256 "c10c508c3750c49918ba248b7a8402980ee12c87ca9819eccd080f51994ce0a6"

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
        url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/1.4.4/kurtosis-cli_1.4.4_linux_arm64.tar.gz"
        sha256 "838d058a4e9164733c428bbe7c469d8d50e3a15ec692cdd41e694e0fe989b19f"

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
