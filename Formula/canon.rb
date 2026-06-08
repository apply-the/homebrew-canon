class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.71.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.71.1/canon-0.71.1-macos-arm64.tar.gz"
      sha256 "592e984b795c39d2328d14df9daec3a8262fb43b65b80632c19dfa4b83da96a9"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.71.1/canon-0.71.1-macos-x86_64.tar.gz"
      sha256 "cc77761aa2feae7831b92cc10b29a14695cce2e793f726fc7f56c579acb8c6ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.71.1/canon-0.71.1-linux-arm64.tar.gz"
      sha256 "2e78294a35e13c613703d93bbfd3228e6dc5f27b268adb17cb0444b07ea0b30a"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.71.1/canon-0.71.1-linux-x86_64.tar.gz"
      sha256 "664a84ec482b18c45e914f3cf8e490c153e711723935653c247ff6b9f572adf7"
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