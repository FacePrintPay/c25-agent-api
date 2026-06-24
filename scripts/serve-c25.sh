#!/usr/bin/env bash
set -euo pipefail
PORT="${PORT:-3000}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
if command -v python3 >/dev/null 2>&1; then
  echo "Serving Constellation25 at http://localhost:${PORT}"
  python3 -m http.server "$PORT"
elif command -v python >/dev/null 2>&1; then
  echo "Serving Constellation25 at http://localhost:${PORT}"
  python -m SimpleHTTPServer "$PORT"
else
  echo "Python is required. In Termux run: pkg install python" >&2
  exit 1
fi
