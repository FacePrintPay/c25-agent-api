#!/usr/bin/env bash
set -euo pipefail
REMOTE_URL="${1:-}"
BRANCH="${PAGES_BRANCH:-main}"
if [[ -z "$REMOTE_URL" ]]; then
  echo "Usage: bash scripts/publish-github-pages.sh https://github.com/USER/REPO.git" >&2
  exit 1
fi
git init >/dev/null
if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "$REMOTE_URL"
else
  git remote set-url origin "$REMOTE_URL"
fi
# FIX 3: Include artifacts/ and artifacts.json in staged set
git add index.html README.md scripts artifacts/ artifacts.json 2>/dev/null || \
git add index.html README.md scripts
git commit -m "Deploy to GitHub Pages" --allow-empty
git push -u origin "$BRANCH"
