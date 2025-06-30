class Ordinator < Formula
  desc "Dotfiles and Environment Manager for macOS"
  homepage "https://github.com/ordinators/ordinator"
  url "https://github.com/ordinators/ordinator/archive/v0.1.2.tar.gz"
  sha256 "13e0b2271b2c9c881b3339e2c30a00aabacc2eb1e033c0b45703f69e17e8762e"
  license "MIT"
  head "https://github.com/ordinators/ordinator.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ordinator", "--version"
  end
end
