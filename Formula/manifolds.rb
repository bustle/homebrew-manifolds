# in homebrew-manifolds/Formula/manifolds.rb
class Manifolds < Formula
  desc "CLI tool for managing data infrastructures"
  homepage "https://github.com/bustle/manifolds"
  url "https://rubygems.org/downloads/manifolds-0.0.1.gem"
  sha256 "8304d96418d76a2cfa3a04d2267f15383cb5019fbc0359c43302839e055b9e97"
  license "MIT"

  def install
    system "gem", "install", "manifolds-0.0.1.gem"
    bin.install "exe/manifolds"
  end

  test do
    system "#{bin}/manifolds", "--version"
  end
end
