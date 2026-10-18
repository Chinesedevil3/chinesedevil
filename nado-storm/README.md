# Nado Storm — Ink Territory Arcade

**Play now:** https://chinesedevil3.github.io/chinesedevil/nado-storm/

A single-page, client-side Qix-style territory game, made as a fan tribute for the Ink / Nado community. It is not an official game or endorsement.

## Controls
- Arrow keys or WASD: move along safe territory.
- Hold Space or Z while moving: begin a trail. Reconnect with safe territory to close the cut.
- Release Space/Z to pause an unfinished trail, then hold it again to continue. The exposed trail remains vulnerable to storm collisions.
- Shift, or the DRAW toggle: slow draw for bonus points.
- P: pause/resume.
- Enter: start, advance, or reboot.
- Sound toggle: turn synthesized arcade effects on/off.

Claim at least 78% of the playfield to advance. Avoid the cyan storm entities while a trail is exposed. Best score is saved locally in the browser.

## Run locally
Open `nado-storm/index.html` in a modern desktop browser. No build step, package manager, server, or external library is required.

## Deployment
GitHub Actions deploys the repository to GitHub Pages. The game lives in the `nado-storm/` subfolder, leaving the existing root project untouched. Workflow file: `.github/workflows/deploy-pages.yml`.

## Replace placeholder logo marks
Use approved SVG artwork only. The top-left marks are currently CSS placeholders. To use the included SVGs, replace the .sigil elements with:
```html
<img class="brand-logo" src="assets/ink-mark.svg" alt="Ink">
<img class="brand-logo" src="assets/nado-mark.svg" alt="Nado">
```
Add `.brand-logo{width:31px;height:31px;object-fit:contain}` to the CSS. Keep the text splash labels or replace them with image elements. Do not imply official affiliation without permission.

## Credit
Fan-made Qix-style tribute for the Ink / Nado community. Not affiliated with or endorsed by Ink or Nado.