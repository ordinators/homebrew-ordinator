class Ordinator < Formula
  desc "Dotfiles and Environment Manager for macOS"
  homepage "https://github.com/ordinators/ordinator"
  url "https://github.com/ordinators/ordinator/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "5251b8eef4cd48b97cb02270cdc59df7c35d63eeb138113ac21810b288a77905"
  license "MIT"
  head "https://github.com/ordinators/ordinator.git", branch: "master"

  depends_on "rust" => :build

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
