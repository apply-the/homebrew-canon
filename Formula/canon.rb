class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.61.0/canon-0.61.0-macos-arm64.tar.gz"
      sha256 "614d75cae4c9d51b8e31cb6b096cbe21efa73ea26fee42d9a696b09e4a6dcfc7"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.61.0/canon-0.61.0-macos-x86_64.tar.gz"
      sha256 "251bc4e5834d2b5d39841037fcf0b7784f83f8fc58f9e7348cbc7609fd30de38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.61.0/canon-0.61.0-linux-arm64.tar.gz"
      sha256 "54796ec8b86e693f0697938a5a6539a2faaa0c9517a52ce6d222b6bacbf769b3"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.61.0/canon-0.61.0-linux-x86_64.tar.gz"
      sha256 "cc751878ec0226378fbca7d906a1cb40043a92798771f4a3cb95db350511879c"
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