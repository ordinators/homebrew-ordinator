class Ordinator < Formula
  desc "Dotfiles and Environment Manager for macOS"
  homepage "https://github.com/ordinators/ordinator"
  url "https://github.com/ordinators/ordinator/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "d0e57f079e420fcce9b14030af6cda9481a20e4fa760a890621cf895e3469a74"
  license "MIT"
  head "https://github.com/ordinators/ordinator.git", branch: "master"

  depends_on "rust" => :build
  depends_on "sops"
  depends_on "age"

  def install
    # Set OpenSSL environment variables to use Homebrew's OpenSSL
    # This ensures git2 links against Homebrew's OpenSSL instead of system OpenSSL
    ENV["LDFLAGS"] = "-L#{Formula["openssl"].opt_lib}"
    ENV["CPPFLAGS"] = "-I#{Formula["openssl"].opt_include}"
    
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"ordinator", "--version"
  end
end
