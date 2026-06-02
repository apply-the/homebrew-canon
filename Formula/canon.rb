class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.64.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.64.0/canon-0.64.0-macos-arm64.tar.gz"
      sha256 "79bf8539b5dc841b24250ef894cf88691d772d0b6d680d9a70b7b16e8bb1b842"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.64.0/canon-0.64.0-macos-x86_64.tar.gz"
      sha256 "b22652caf231e6f066b287c8a757df8fad27a0dbd90bf593f735a82aad4a6cd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.64.0/canon-0.64.0-linux-arm64.tar.gz"
      sha256 "6b107eec3d30115de82d4a93fb5cdb20aa4a5109b29a852c311d11f53879cda4"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.64.0/canon-0.64.0-linux-x86_64.tar.gz"
      sha256 "a7c882a2e5c717d44f701540b95da61d5aa5656a7ddd5c850ea3ed4c09f27410"
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