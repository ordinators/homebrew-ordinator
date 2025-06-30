class Ordinator < Formula
  desc "Dotfiles and Environment Manager for macOS"
  homepage "https://github.com/ordinators/ordinator"
  url "https://github.com/ordinators/ordinator/archive/v0.1.2.tar.gz"
  sha256 "15ac211c24fc8d84bfff84a57aa98a5363569d394bcc6b9297d6583c8780ac5c"
  license "MIT"
  head "https://github.com/ordinators/ordinator.git", branch: "master"

  depends_on "rust" => :build

  def install
    # Override CPU target and add compilation optimizations
    ENV["RUSTFLAGS"] = "-C target-cpu=native -C codegen-units=1"
    ENV["CARGO_NET_TIMEOUT"] = "300"
    ENV["CARGO_BUILD_JOBS"] = ENV.make_jobs.to_s
    
    # Use cargo build instead of install for more control
    system "cargo", "build", "--release", "--locked", "--verbose"
    bin.install "target/release/ordinator"
  end

  test do
    system "#{bin}/ordinator", "--version"
  end
end
