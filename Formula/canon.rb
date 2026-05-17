class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.57.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.54.0/canon-0.54.0-macos-arm64.tar.gz"
      sha256 "92826846e61b4a58675604ae5646b6ccf05c6593c72b8f624023187cd75819bb"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.54.0/canon-0.54.0-macos-x86_64.tar.gz"
      sha256 "df53c762495cb066579f936fe9bc8282e600bfd93bd1dcca64c2e2ace26bc1cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.54.0/canon-0.54.0-linux-arm64.tar.gz"
      sha256 "fdc12381881266076b022810b1c444501cf530a00fdb6d38758b0942ac3a40fa"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.54.0/canon-0.54.0-linux-x86_64.tar.gz"
      sha256 "014db5ef4cd7f47313ca09f5e428713f1d619ccf5ba30cd299f75b495f66c25b"
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