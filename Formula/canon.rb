class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.72.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.1/canon-0.72.1-macos-arm64.tar.gz"
      sha256 "0988c8856f66e51b3a540995439c631e226c293c6a8c1e6d2a5a369ce8b49072"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.1/canon-0.72.1-macos-x86_64.tar.gz"
      sha256 "33ac20702f11edd72461d6a56a7344acd402c2a66b03baacbc7b76bf85ffe9c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.1/canon-0.72.1-linux-arm64.tar.gz"
      sha256 "3c9199ea585a9ac751630e081cd0ab32d1b9056d562347ab9685830c49c38ee9"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.1/canon-0.72.1-linux-x86_64.tar.gz"
      sha256 "a80211dee43573cef77935a02a1e8edd6437ecdbaa4e9b1fe2af33b5ec9283f3"
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