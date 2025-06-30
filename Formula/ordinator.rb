class Ordinator < Formula
  desc "Dotfiles and Environment Manager for macOS"
  homepage "https://github.com/ordinators/ordinator"
  url "https://github.com/ordinators/ordinator/archive/v0.1.2.tar.gz"
  sha256 "2355872b6cb2470a1c42d0b86945aac48da0c7896db8ddd129b1990939c39202"
  license "MIT"
  head "https://github.com/ordinators/ordinator.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/ordinator", "--version"
  end
end
