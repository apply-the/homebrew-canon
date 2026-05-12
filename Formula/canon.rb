class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.46.0/canon-0.46.0-macos-arm64.tar.gz"
      sha256 "536bc8ca8979f6ea3711cbd6e18163dcccd3ffad950d19d7f666212e0bd59151"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.46.0/canon-0.46.0-macos-x86_64.tar.gz"
      sha256 "eae366440bc1dfbb3d3f4d0dc24deafbe6c615f451ac757c5d6be74f4d7d0045"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.46.0/canon-0.46.0-linux-arm64.tar.gz"
      sha256 "fff5bc915cdd6ca037e40b94963ae330d7b48aa5abda311631ac2f086d1fffd3"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.46.0/canon-0.46.0-linux-x86_64.tar.gz"
      sha256 "f8c0c9b196dcc27284bdef988dcf58b85f9c27677f310c6e22ae03d178b21030"
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