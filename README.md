# Ruto

> Every link. The right browser.

[![Website](https://img.shields.io/badge/website-ruto.saiumesh.dev-teal.svg)](https://ruto.saiumesh.dev)
[![macOS](https://img.shields.io/badge/macOS-15.6+-blue.svg)](https://www.apple.com/macos/)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-5.9+-orange.svg)](https://swift.org/)

**Ruto** is a native macOS app that routes links to the browser you choose. Match URLs with rules, pick a browser when nothing matches, and keep analytics on your Mac.

**Website:** [ruto.saiumesh.dev](https://ruto.saiumesh.dev)

---

## Features

- **Smart URL rules** — Route by domain, wildcard (`*.figma.com`), or full URL. Toggle rules active/inactive.
- **Browser picker overlay** — Native dock-style picker when no rule matches, with remember choice.
- **Profiles & private mode** — Open links in Chromium profiles (Chrome, Brave, Edge, Arc) or private/incognito windows.
- **All Rules dashboard** — Search, filter, master-detail inspector, and inline hit counts.
- **Per-browser rules** — Manage rules scoped to each browser from the sidebar.
- **Local analytics** — Total opens, unique opens, top rules, browser breakdown, and charts (Today, 7/30 days, custom range). Data stays on your Mac.
- **Browser extension** — Right-click **Open with Ruto** in Chrome, Brave, Edge, Arc, or Firefox without changing your default browser.
- **Default browser sync** — Detect installed browsers; set Ruto as default or sync when macOS changes externally.
- **Privacy first** — No cloud account. Extension uses a local bridge token.
- **Settings & updates** — Open at login, light/dark/system theme, and in-app update checks from GitHub Releases.

---

## Supported browsers

Safari, Chrome, Firefox, Brave, Arc, Edge, Orion, and other macOS browsers registered for http/https.

Chromium **profiles** are supported for Chrome, Brave, Edge, and Arc.

---

## System requirements

- **macOS 15.6 (Sequoia)** or later
- Apple Silicon or Intel

---

## Installation

### Homebrew (custom tap)

```bash
brew tap saiumesh535/ruto-bin
brew install --cask ruto
```

Upgrade later:

```bash
brew update && brew upgrade --cask ruto
```

### Manual download

1. Download the latest **[Ruto.zip](https://github.com/saiumesh535/Ruto-bin/releases/latest)** from [Releases](https://github.com/saiumesh535/Ruto-bin/releases).
2. Unzip and drag **Ruto.app** to **Applications**.
3. Open Ruto (allow in **System Settings → Privacy & Security** if macOS blocks the first launch).

Each release includes:

| Asset | Description |
|-------|-------------|
| `Ruto.zip` | Signed, notarized macOS app |
| `Ruto-browser-extension.zip` | Chromium + Firefox extension folders |

### In-app updates

Open **Ruto → Settings → Updates**, then **Check Now** or **Install Update**.

---

## Quick start

1. Launch **Ruto** from Applications.
2. Optionally click **Set as default** in the sidebar to intercept http/https links.
3. In **All Rules**, add a pattern (e.g. `github.com` or `*.notion.so`) and pick a browser.
4. Click a matching link — it opens in the right browser. No match? Use the picker overlay.

**Tip:** Option-click or right-click a browser in the picker for profiles and private mode.

---

## Browser extension

Use Ruto from any tab without making it your default browser.

1. Download **[Ruto-browser-extension.zip](https://github.com/saiumesh535/Ruto-bin/releases/latest)** from the latest release (or use the copy bundled inside `Ruto.app`).
2. Launch Ruto once, then open **Browser Extension** in the sidebar and click **Refresh Status**.
3. **Chromium:** `chrome://extensions` → Developer mode → **Load unpacked** → select the `chromium` folder from the zip.
4. **Firefox:** `about:debugging` → **This Firefox** → **Load Temporary Add-on** → select `firefox/manifest.json`.
5. Right-click any link → **Open with Ruto**.

Full release notes on each [GitHub release](https://github.com/saiumesh535/Ruto-bin/releases/latest) include extension steps.

---

## How it works

1. Set Ruto as your default browser (optional), or use the extension from any browser.
2. A link opens → Ruto checks your rules.
3. **Match** → opens in the configured browser (and profile/private settings if set).
4. **No match** → browser picker overlay appears.

---

## Example rules

| Pattern | Opens in | Notes |
|---------|----------|--------|
| `github.com` | Chrome | Domain match |
| `*.figma.com` | Safari | Wildcard subdomain |
| `https://x.com/user/status/123` | Firefox | Exact URL |

---

## Links

| | |
|---|---|
| **Website** | [ruto.saiumesh.dev](https://ruto.saiumesh.dev) |
| **Releases** | [github.com/saiumesh535/Ruto-bin/releases](https://github.com/saiumesh535/Ruto-bin/releases) |
| **Extension setup** | [Latest release notes](https://github.com/saiumesh535/Ruto-bin/releases/latest) |
| **Issues** | [github.com/saiumesh535/Ruto-bin/issues](https://github.com/saiumesh535/Ruto-bin/issues) |

---

Made for macOS users who want control over their browsing experience.
