class Ordinator < Formula
  desc "Dotfiles and Environment Manager for macOS"
  homepage "https://github.com/ordinators/ordinator"
  url "https://github.com/ordinators/ordinator/archive/v0.1.2.tar.gz"
  sha256 "17b4ec9d3411a4f50c0453f355e909df29c0d7b81026338410c2a54545cde23a"
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
