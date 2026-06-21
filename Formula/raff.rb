# Homebrew formula template for raff.
#
# The release workflow replaces the placeholders below before pushing this file
# into the Homebrew tap repository.

class Raff < Formula
  desc "Rust architecture fitness functions"
  homepage "https://github.com/liamwh/raff"
  license "MIT"
  version "0.1.4"

  on_arm do
    url "https://github.com/liamwh/raff/releases/download/v0.1.4/raff-aarch64-apple-darwin.tar.gz"
    sha256 "7e1ac46e7c4b5d28ee8f9b0020cd64ad376eeb891f7344118db2d7ebab01da9c"
  end

  on_intel do
    url "https://github.com/liamwh/raff/releases/download/v0.1.4/raff-x86_64-apple-darwin.tar.gz"
    sha256 "a23bc0f78949797201597b636dd0305da697d7db71e18b3708899330fc11ad27"
  end

  depends_on :macos

  def install
    bin.install "raff"
  end

  test do
    assert_match "raff", shell_output("#{bin}/raff --help")
  end
end
