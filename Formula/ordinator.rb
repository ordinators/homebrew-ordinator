class Ordinator < Formula
  desc "Dotfiles and Environment Manager for macOS"
  homepage "https://github.com/ordinators/ordinator"
  url "https://github.com/ordinators/ordinator/archive/v0.1.2.tar.gz"
  sha256 "15ac211c24fc8d84bfff84a57aa98a5363569d394bcc6b9297d6583c8780ac5c"
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
