class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.68.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.68.0/canon-0.68.0-macos-arm64.tar.gz"
      sha256 "a988ec4d7814c3d9291688cdacd0647b9d8e0611f1169d53c7670342bc89a6a2"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.68.0/canon-0.68.0-macos-x86_64.tar.gz"
      sha256 "edcbdeade2970b87b9cb94c9638de56aa82da60ebde9c197e145b754627f530a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.68.0/canon-0.68.0-linux-arm64.tar.gz"
      sha256 "0c3167bcc544b5e31df5146c295f6f1811a2a14d17fe48a87c78e0b8c011333b"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.68.0/canon-0.68.0-linux-x86_64.tar.gz"
      sha256 "24c99ce32dce02d04c69ca6b982808a4e6846c2cd3767bfe0a12d20f97b14113"
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