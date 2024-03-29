# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KurtosisCliAT08015 < Formula
  desc "CLI for managing Kurtosis environments."
  homepage "https://www.kurtosistech.com"
  version "0.80.15"
  license "BSL"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.80.15/kurtosis-cli_0.80.15_darwin_arm64.tar.gz"
      sha256 "40097c2cf0c315b262b2c6abaeb6745136e97aef77bc8fbefbdc718b090006c7"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.80.15/kurtosis-cli_0.80.15_darwin_amd64.tar.gz"
      sha256 "0453b03fcf45562bc2f00f9d1dcfbd9b2e270618265fc45fae2fbc45ec347856"

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
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.80.15/kurtosis-cli_0.80.15_linux_arm64.tar.gz"
      sha256 "db7cf485a9d3ad05f3acada8cc72cf77f88fcbd5af14eb8526af037b171b5ddb"

      def install
        bin.install "kurtosis"
        bash_completion.install "scripts/completions/scripts/kurtosis.bash" => "kurtosis"
        zsh_completion.install "scripts/completions/scripts/kurtosis.zsh" => "_kurtosis"
        fish_completion.install "scripts/completions/scripts/kurtosis.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kurtosis-tech/kurtosis-cli-release-artifacts/releases/download/0.80.15/kurtosis-cli_0.80.15_linux_amd64.tar.gz"
      sha256 "d704c739908d2db552d615a7b9c993d842165739e1d153f0fd93e09190441374"

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
