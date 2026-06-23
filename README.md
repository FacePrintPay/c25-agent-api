# Constellation25 End-User Compilation

Constellation25 is a self-contained browser dashboard for the AIKre8tive / C25 product constellation. It gives end users one place to sign up locally, browse all modules, open module pages and subpages, and understand the platform before deeper backend services are connected.

## Included modules

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

## What this compilation does

- Provides a static `index.html` artifact that works without a build step.
- Maps all 11 modules into routeable pages using URL hashes.
- Includes subpages for every module so consumers can click through the platform end to end.
- Stores signup data locally in the browser for demo/testing purposes.
- Provides Termux and GitHub Pages scripts for local serving and public publishing.

## Next integration milestone

Replace the dashboard's static status cards with live health checks from each module service and add launch commands for every backend repository.
