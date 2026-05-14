class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.50.0/canon-0.50.0-macos-arm64.tar.gz"
      sha256 "08ab0cd37a2c3b86123576b1a3379fb4e909993f386591d6514b8cc37cfc3e1b"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.50.0/canon-0.50.0-macos-x86_64.tar.gz"
      sha256 "8b8d408c0eeab0a264062dba5f9a8ec1f9ec255ff4eacc576e8d26f557fb3c79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.50.0/canon-0.50.0-linux-arm64.tar.gz"
      sha256 "372b788da3bcfd6cb063737e26b4b43171dd7061ff986b15aacb3cb88d2ad221"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.50.0/canon-0.50.0-linux-x86_64.tar.gz"
      sha256 "72d5f862df16ebc312ec270d01da826dd2cd3ccffa27ba9e488192c9557fdaea"
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