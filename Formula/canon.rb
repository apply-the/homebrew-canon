class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.66.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.65.0/canon-0.65.0-macos-arm64.tar.gz"
      sha256 "34a2855ffd1a407aff687def3361d0636df638e00ea33ce35ebbc3fef53a3dfd"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.65.0/canon-0.65.0-macos-x86_64.tar.gz"
      sha256 "409ca03b08348adc9e4b9f8f8eb9e93f1717a0b83259e8de8dfedc457220d8d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.65.0/canon-0.65.0-linux-arm64.tar.gz"
      sha256 "caca9b59d20d7c4b1e6414de88301452e7481aed5526ee530cb4ff0e4e331b11"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.65.0/canon-0.65.0-linux-x86_64.tar.gz"
      sha256 "5a678f4372a409549cb14e0aae2de9a560094c0b45e2a725df0af2c1f9e91074"
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