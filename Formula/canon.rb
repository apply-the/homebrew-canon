class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.72.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.5/canon-0.72.5-macos-arm64.tar.gz"
      sha256 "64d013e83e8581f7f590a4ed2fc8e964b3631241f98c9626d2ceb6e6215b38e0"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.5/canon-0.72.5-macos-x86_64.tar.gz"
      sha256 "ae2e93791c30ab80b996b257d8edc6d4f88218c6340435de4bd144cbb78bc338"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.5/canon-0.72.5-linux-arm64.tar.gz"
      sha256 "324f2f6c3057c3cc2ebe00371a411657577a9823fa7b0b70c387623718818e25"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.5/canon-0.72.5-linux-x86_64.tar.gz"
      sha256 "2e5861a9ca91ab0e9b81fbe9e45f6bcae9d8eda5c5556002e06fe0eec461c6f2"
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