class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.48.0/canon-0.48.0-macos-arm64.tar.gz"
      sha256 "6cd6096a2ddc09f4ea0cb76e960c6e01380ae25474070ce17a809ae9fa8349d0"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.48.0/canon-0.48.0-macos-x86_64.tar.gz"
      sha256 "ab5cca7a038c43e357f1314eed7dc130ba729af13d46948d0114655b999ef206"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.48.0/canon-0.48.0-linux-arm64.tar.gz"
      sha256 "4d517850a534d30839a988e68437feba43c44b559fcdc10970e7c7f9df8bd6c0"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.48.0/canon-0.48.0-linux-x86_64.tar.gz"
      sha256 "f2776285b00186d65b7dd35e9fb9a2749771fe1f7e34b037b926779fc390904b"
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