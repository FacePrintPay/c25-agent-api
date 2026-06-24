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
git add index.html README.md scripts
git commit -m "Publish Constellation25 static platform" || true
git branch -M "$BRANCH"
git push -u origin "$BRANCH"
echo "Enable GitHub Pages from branch '$BRANCH' / root in repository settings."
