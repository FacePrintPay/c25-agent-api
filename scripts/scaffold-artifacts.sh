#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
mkdir -p artifacts
python3 - <<'PY'
import json, pathlib, re
items=json.loads(pathlib.Path('artifacts.json').read_text())
def slug(s): return re.sub(r'(^-|-$)', '', re.sub(r'[^a-z0-9]+','-',s.lower()))
for item in items:
    path=pathlib.Path('artifacts')/(slug(item['title'])+'.md')
    if not path.exists():
        path.write_text(f"# {item['title']}\n\nStatus: {item['status']}\nEdited: {item['edited']}\nCategory: {item['category']}\n\nPaste or export the private Claude artifact body here.\n")
print(f"Scaffolded {len(items)} artifact files in artifacts/")
PY
