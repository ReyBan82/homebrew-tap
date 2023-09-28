# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class LocalstackCli < Formula
  desc "Localstack cli packaged using pyinstaller"
  homepage "https://github.com/localstack/localstack-cli"
  url "https://github.com/localstack/localstack-cli/archive/v2.3.0.tar.gz"
  sha256 "0d9da34c8f7dc0eed126f7267f114db1e25c7af73f59e9012dc63c2dd32268af"
  license "NOASSERTION"

  on_macos do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v2.3.0/localstack-cli-2.3.0-darwin-amd64.tar.gz"
      sha256 "96300d5f2d684e63f341b2901bd2c7d7c7d408255aa2765e3c3c4a5b33b837b4"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v2.3.0/localstack-cli-2.3.0-darwin-arm64.tar.gz"
      sha256 "96300d5f2d684e63f341b2901bd2c7d7c7d408255aa2765e3c3c4a5b33b837b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v2.3.0/localstack-cli-2.3.0-linux-amd64.tar.gz"
      sha256 "2e0eb434e560df3ddbebd99de29f20309721d8c77b82ba6d138b3642507f2276"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v2.3.0/localstack-cli-2.3.0-linux-arm64.tar.gz"
      sha256 "1404d19564affaee2544846909a8145f3f4d41754163fd979fe827b5e19af70c"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"localstack"
  end

  test do
    assert_match /LocalStack Command Line Interface/, shell_output("#{bin}/localstack --help", 0)
  end
end
