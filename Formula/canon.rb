class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.72.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.1/canon-0.72.1-macos-arm64.tar.gz"
      sha256 "c4a62a4271a8ae1e5df7c90fe0271e9395f55c3a247ac4cbd67e1a4b715a6a19"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.1/canon-0.72.1-macos-x86_64.tar.gz"
      sha256 "28ba4c50368612378d8a4ceba545829ee5f3e167e70a56baaa46f7ee3608c2e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.1/canon-0.72.1-linux-arm64.tar.gz"
      sha256 "030bf950e49720efc021b71f77dc395e96e717ee1a60fbd05b045db80dcc3998"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.1/canon-0.72.1-linux-x86_64.tar.gz"
      sha256 "e7d4df0cf785e3241bd7fe843d96a227ad9e6974e89bd558dbc62a734fc027d7"
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