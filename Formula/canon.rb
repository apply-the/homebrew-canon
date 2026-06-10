class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.72.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.4/canon-0.72.4-macos-arm64.tar.gz"
      sha256 "a34ad2c2c160b9a51ef8aed0140ba47de99e9f03af9babaea2d5e5fa0622c603"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.4/canon-0.72.4-macos-x86_64.tar.gz"
      sha256 "3752064fccee805d02616099e4bb3363505f8d5b36aae86de3e7cbba76276ac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.4/canon-0.72.4-linux-arm64.tar.gz"
      sha256 "f7e6209c34fbe2f24b9798ec9fbc48962310bee14fee6c4fbbdd59def458ba93"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.4/canon-0.72.4-linux-x86_64.tar.gz"
      sha256 "63dfb4fa526badd635bfefc49d8d245cea80d90d38451e0a62bc5370291be1f7"
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