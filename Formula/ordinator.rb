class Ordinator < Formula
  desc "Dotfiles and Environment Manager for macOS"
  homepage "https://github.com/ceterus/ordinator"
  url "https://github.com/ceterus/ordinator/archive/v0.1.0.tar.gz"
  # sha256 will be added after we create the first release
  license "MIT"
  head "https://github.com/ceterus/ordinator.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "."
  end

  test do
    system "#{bin}/ordinator", "--version"
  end
end
