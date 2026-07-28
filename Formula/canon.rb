class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.90.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.90.0/canon-0.90.0-macos-arm64.tar.gz"
      sha256 "192efba31a5a9ce4ae98ccf69cd87caede9168cd07cf3636e6382a61a3a77ba6"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.90.0/canon-0.90.0-macos-x86_64.tar.gz"
      sha256 "e06bf3cb057b86c829895452f4f376979a4be02e27746b605a9c729e98a10714"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.90.0/canon-0.90.0-linux-arm64.tar.gz"
      sha256 "9b615529f4f08c031b2fd515f205c82cc56818500de01a0e1a8cd24f3c069d29"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.90.0/canon-0.90.0-linux-x86_64.tar.gz"
      sha256 "6672b0329e548dbac131a3a20fc0cbc02a1fb6b32765a65d9deeabeb716851d0"
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