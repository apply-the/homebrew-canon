class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.70.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.69.0/canon-0.69.0-macos-arm64.tar.gz"
      sha256 "69759feb6b6b849d806004d17c2510cf7e04ae082487298e48de5c5f4a454966"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.69.0/canon-0.69.0-macos-x86_64.tar.gz"
      sha256 "7df6a3d2725854fe0765ee0ff393698c6e8f48c0637dd4404278436121a15fea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.69.0/canon-0.69.0-linux-arm64.tar.gz"
      sha256 "33aeb61422e3326690438538022ba5f7535b759ec9d6ce09d3e3a31197d87caa"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.69.0/canon-0.69.0-linux-x86_64.tar.gz"
      sha256 "6d4f569b422a2a6fc556c0e350801ace0628ae8dd6ce992be903ae4d27000657"
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