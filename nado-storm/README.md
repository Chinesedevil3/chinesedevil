# Nado Storm — Ink Territory Arcade

**Play:** https://chinesedevil3.github.io/chinesedevil/nado-storm/

A single-page Qix-style territory arcade fan tribute for the Ink / Nado community. Not an official game or endorsement.

## Run locally
Open `index.html` in a modern browser. No build step, package manager, or external library is required.

## Controls
- Arrow keys or WASD: move around safe territory.
- Hold Space or Z while moving into open space: draw a trail.
- Keep holding to continue the cut. Release to pause it; re-hold to resume.
- Reconnect the line with existing safe territory to seal it and capture territory.
- Shift or the DRAW toggle: slow drawing for a higher score.
- P: pause / resume.
- Enter: start, advance, or reboot.
- Leaderboard button: view the local top 10 and set a callsign.

## Classic Qix-style rules
Claim at least 78% of the playable interior to advance. The continuous storm diamonds bounce around empty space and can break a live trail, costing a life. Enclosed empty areas without a storm entity are filled. Enemy count, speed, and spawn proximity increase as levels advance.

## Drawing-tool progression
- Levels 1–10: pencil
- Levels 11–20: marker
- Levels 21–30: fountain pen
- Levels 31–40: feather quill
- Levels 41–49: calligraphy nib
- Level 50 onward: Ink mode

The trail is rendered as a continuous stroke with rounded joins so it visually seals cleanly when territory is captured.

## Leaderboard
The included top-10 leaderboard currently saves in browser `localStorage`, so scores are per browser/device and are not shared with other players. A true worldwide leaderboard requires a shared backend/database and its credentials/configuration; this static version does not pretend local scores are online.

## GitHub Pages
This game is under `nado-storm/` in the `Chinesedevil3/chinesedevil` repository. The GitHub Actions workflow deploys the site. The main project in the repository root is not part of this game folder.

## Logos
The included `assets/ink-mark.svg` and `assets/nado-mark.svg` are fan-made placeholder marks paired with Ink/Nado wordmarks in the interface. Replace them with official SVGs only if you have the right assets/permission; keep the page clear that this is a fan tribute.

## Credits
Fan-made Qix-style tribute for the Ink / Nado community. Not affiliated with or endorsed by Ink or Nado.