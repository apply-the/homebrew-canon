# frozen_string_literal: true

class Canon < Formula
  desc "Governance runtime for AI-assisted engineering work"
  homepage "https://github.com/apply-the/canon"
  license "MIT"

  url "https://github.com/apply-the/canon", using: :git, tag: "0.43.0"
  version "0.43.0"

  head "https://github.com/apply-the/canon", branch: "main", using: :git

  depends_on "rustup" => :build

  def install
    rustup_bin = Formula["rustup"].opt_bin/"rustup"
    cargo_bin = Formula["rustup"].opt_bin/"cargo"

    install_toolchain(rustup_bin, toolchain_version_for(buildpath) || "stable")

    ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"

    system cargo_bin, "install",
           "--locked",
           "--path", "crates/canon-cli",
           "--root", prefix
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canon --version")
  end

  private

  def toolchain_version_for(root)
    toolchain_file = root/"rust-toolchain.toml"
    return nil unless toolchain_file.exist?

    toolchain_file.read[/channel\s*=\s*"([^"]+)"/, 1]
  end

  def install_toolchain(rustup_bin, toolchain_version)
    system rustup_bin, "toolchain", "install", toolchain_version,
           "--profile", "minimal",
           "--component", "rustfmt",
           "--component", "clippy",
           "--no-self-update"
  end
end