class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.45.0/canon-0.45.0-macos-arm64.tar.gz"
      sha256 "c1ced1c8d5bbc902e04e03f3ab43de25db4a8afc44c5e9fc2a80522e00b61c34"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.45.0/canon-0.45.0-macos-x86_64.tar.gz"
      sha256 "b9ad91391c0f2a571f6d5b734f6eb34f2cfceef2839e2161ab49bc18d10bae0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.45.0/canon-0.45.0-linux-arm64.tar.gz"
      sha256 "8911cdb811e9517532d47f962920ac988bbbd6fa893e364809895fb6bad950d6"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.45.0/canon-0.45.0-linux-x86_64.tar.gz"
      sha256 "fdef47a242c6f7ea6280959b0b725f24a6076158da70cf99672518479bc93709"
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