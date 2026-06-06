class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.71.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.71.0/canon-0.71.0-macos-arm64.tar.gz"
      sha256 "03d30dc292461360933009454b4b8183e4ccc5a760d4a457023f2cac8a987051"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.71.0/canon-0.71.0-macos-x86_64.tar.gz"
      sha256 "3afd4cd4b06c0e4917beb74e61d626088ce50f7645588543d3b11ee5e7cc5f0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.71.0/canon-0.71.0-linux-arm64.tar.gz"
      sha256 "3605a161ff21a701fa746dfe91d1274fb7d2143cf9c4f450c75b9ee5c4fa37b8"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.71.0/canon-0.71.0-linux-x86_64.tar.gz"
      sha256 "46f01918b00f11b15af94c10f556ef56e331ca04ed020379503f16e16d4c61c4"
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