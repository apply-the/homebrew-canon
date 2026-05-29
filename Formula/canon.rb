class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.62.0/canon-0.62.0-macos-arm64.tar.gz"
      sha256 "d3df11a3692bfcc52dc20fa222c1815f859a91f435e45c4dd94834b28fa429d4"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.62.0/canon-0.62.0-macos-x86_64.tar.gz"
      sha256 "9730629e6c0d2e07d69559e6da6959f870ee63217667c4af3d02e134e8113d29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.62.0/canon-0.62.0-linux-arm64.tar.gz"
      sha256 "5e78a78ffd73e1d8209cbd77a63adc6b516b3333b364d3e83663519d5b64b421"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.62.0/canon-0.62.0-linux-x86_64.tar.gz"
      sha256 "70dfa88df809f38f2b01f343a347fe43aa120657ef13d01c5269be63c3e65cba"
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