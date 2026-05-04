# homebrew-canon

Official Homebrew tap repository for Canon.

## Install

```bash
brew tap apply-the/canon
brew install canon
canon --version
```

The `canon` formula builds Canon `0.40.0` directly from the tagged source
repository using the toolchain pinned by the repo.

## Local Tap Development

```bash
brew tap apply-the/canon /Users/rt/workspace/apply-the/homebrew-canon
brew reinstall apply-the/canon/canon
```

## Maintainer Notes

This tap is updated from the main Canon repository by
`/Users/rt/workspace/apply-the/canon/.github/workflows/release.yml`.

Required setup in the source repository:

- Add the secret `HOMEBREW_TAP_GITHUB_TOKEN` in `apply-the/canon`.
- The token must be able to read metadata and write contents plus pull requests
	in `apply-the/homebrew-canon`.
- A fine-grained PAT scoped to `apply-the/homebrew-canon` with
	`Contents: Read and write`, `Pull requests: Read and write`, and
	`Metadata: Read-only` is sufficient.

Operational notes:

- The Canon release workflow renders the Homebrew formula in the source repo,
	checks out this tap, and opens a PR with the updated `Formula/canon.rb`.
- No GitHub Actions secret is required in this tap repository unless you add
	tap-local workflows later.
- If branch protection is enabled here, ensure the token owner can push a
	branch and open pull requests.

## Contents

- `Formula/canon.rb`: builds the `canon` CLI from the tagged Canon source repo.
