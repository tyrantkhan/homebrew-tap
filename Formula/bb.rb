# typed: false
# frozen_string_literal: true

class Bb < Formula
  desc "Bitbucket Cloud CLI"
  homepage "https://github.com/tyrantkhan/bitbucket-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tyrantkhan/bitbucket-cli/releases/download/v#{version}/bb_#{version}_darwin_amd64.tar.gz"
    end

    on_arm do
      url "https://github.com/tyrantkhan/bitbucket-cli/releases/download/v#{version}/bb_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tyrantkhan/bitbucket-cli/releases/download/v#{version}/bb_#{version}_linux_amd64.tar.gz"
    end

    on_arm do
      url "https://github.com/tyrantkhan/bitbucket-cli/releases/download/v#{version}/bb_#{version}_linux_arm64.tar.gz"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system bin/"bb", "--version"
  end
end
