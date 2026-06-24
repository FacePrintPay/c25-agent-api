# Constellation25 Artifact OS

Constellation25 Artifact OS is an end-user compilation layer for the AIKre8tive / C25 stack. It is designed to turn scattered product pages, Claude artifacts, investor materials, module concepts, and Termux deployment steps into one runnable browser artifact.

## What is included

- `index.html` — a self-contained static dashboard with no build step.
- `artifacts.json` — a registry of the artifact titles supplied from the Claude artifact list.
- `scripts/serve-c25.sh` — Termux/local Python static server on port `3000` by default.
- `scripts/publish-github-pages.sh` — GitHub Pages push helper for public testing.
- `scripts/scaffold-artifacts.sh` — creates placeholder Markdown files for every private artifact so the real bodies can be pasted/exported into the repo later.

## Product modules

- Constellation25 — core OS and publishing center on port 3000
- VideoCourts — justice-tech workspace on port 8002
- MyBUYo — personal commerce agent on port 8003
- Commz — messaging and CRM layer on port 8004
- Parasol — privacy and protection workflows on port 8005
- ArcAI — AI studio and prompt/model workspace on port 8006
- Agentik — agent orchestration hub on port 8007
- SovereignGTP — private AI and memory controls on port 8008
- FacePrintPay — biometric payment demo and pilot packet on port 8009
- TotalRecall — personal/project memory system on port 8010
- YesQuidPro — proposal and deal workspace on port 8011

## Artifact registry

The dashboard includes the artifact names you supplied, including capital raise materials, investor one-pagers, playbooks, lead tools, deployment analysis, dashboards, and published HTML product builds. Private artifact bodies are not present in this repository yet; run the scaffold script to create the files where those bodies should be pasted.

```bash
bash scripts/scaffold-artifacts.sh
```

## Run locally in Termux

```bash
pkg update
pkg install python git
bash scripts/serve-c25.sh
```

Open `http://localhost:3000` in the Android browser.

## Publish to GitHub Pages

```bash
bash scripts/publish-github-pages.sh https://github.com/FacePrintPay/constellation25-mono.git
```

Then enable GitHub Pages from the repository settings using the `main` branch and repository root.

## End-user flow

1. Open the dashboard.
2. Browse the module map.
3. Open a module and its subpages.
4. Review the artifact registry.
5. Create a local demo signup profile.
6. Use the package page to run locally or publish publicly.

## Next integration milestone

Paste/export the private artifact bodies into the scaffolded `artifacts/*.md` files, then replace the dashboard's static status cards with live health checks from each module service.
