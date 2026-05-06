# homebrew-canon

Official Homebrew tap repository for Canon.

## Install

```bash
brew tap apply-the/canon
brew install canon
canon --version
```

The `canon` formula builds the latest tagged Canon release directly from the
source repository using the toolchain pinned by the repo.

## Local Tap Development

```bash
brew tap apply-the/canon /Users/rt/workspace/apply-the/homebrew-canon
brew reinstall apply-the/canon/canon
```

## Maintainer Notes

This tap updates itself from the latest tagged Canon release via
`.github/workflows/sync-latest-canon-tag.yml`.

Operational notes:

- The tap-local workflow resolves the latest semver tag from `apply-the/canon`
	and rewrites `Formula/canon.rb` to that exact tag and version.
- The workflow uses this repository's `GITHUB_TOKEN` with `contents: write` to
	commit directly to `main` when the formula changes.
- If branch protection is enabled here, allow GitHub Actions to push to `main`
	or replace the default token with a repository secret for a bot account.

## Release Checklist

1. In `apply-the/canon`, push the release tag after the tagged source repo is
	ready for Homebrew consumers.
2. Wait for or manually run `.github/workflows/sync-latest-canon-tag.yml` in
	this repository.
3. Verify the updated tap with `brew reinstall apply-the/canon/canon` and
	`canon --version`.

## Contents

- `Formula/canon.rb`: builds the `canon` CLI from the tagged Canon source repo.
