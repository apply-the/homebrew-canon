class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.44.0/canon-0.44.0-macos-arm64.tar.gz"
      sha256 "e62bc6c1078411c402f40694d380d00eac393124b524d02e8d0d20e9b7c82f9e"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.44.0/canon-0.44.0-macos-x86_64.tar.gz"
      sha256 "865bd92ddb3fc3dfabab14612480280f130f8a0c393ba9db79f4a5205627a934"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.44.0/canon-0.44.0-linux-arm64.tar.gz"
      sha256 "06afa6f37e47e7a60e651792213ff7e5e44c099430c6099c5a84bb5c54b76939"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.44.0/canon-0.44.0-linux-x86_64.tar.gz"
      sha256 "b5ab019a9b91fda7b38eb6d3d031296d39d23ea7fb4be7c4a8d0da72cd7b877e"
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