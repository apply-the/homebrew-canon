class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.63.0/canon-0.63.0-macos-arm64.tar.gz"
      sha256 "d2c04d32e7bcc861826030f8d412717f24f9b4d3098cdf3aa43c6390e39d92cf"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.63.0/canon-0.63.0-macos-x86_64.tar.gz"
      sha256 "5b0b31eaf8da263e6f55c9f0d0a117ef8937c8551ded2ba877e6d62161fee6af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.63.0/canon-0.63.0-linux-arm64.tar.gz"
      sha256 "657b0d86db6349d69b01c35b46c5ab7dd732b5780ae0a9fc77b6d62a2954f52a"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.63.0/canon-0.63.0-linux-x86_64.tar.gz"
      sha256 "0e31a4d44fc7dc557afb606245c1e54308afe3d663f0893a8d5a2ba4a4ebf79b"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    system bin/"canon", "init", "--output", "json"
    assert_path_exists testpath/".canon"
  end
end