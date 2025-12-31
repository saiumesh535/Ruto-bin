# Ruto

> The smartest way to control how links open on your Mac. Route, automate, and streamline your browsing with effortless precision.

[![macOS](https://img.shields.io/badge/macOS-13.0+-blue.svg)](https://www.apple.com/macos/)
[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

**Ruto** is a productivity app for macOS that lets you set rules for where links should open. Set it once, and it just works. No more clicking links and having them open in the wrong browser.

Learn more: [saiumesh.dev/apps/ruto](https://saiumesh.dev/apps/ruto)

---

## Features

- **Smart URL Routing** - Automatically route URLs to specific browsers based on rules
- **Flexible Rule Matching** - Support for exact domains, wildcards (`*.example.com`), and regex patterns
- **Built-in Regex Tester** - Test your patterns before saving them to ensure they work correctly
- **Interactive Overlay** - Quick browser selection when no rule matches, with option to remember your choice
- **Usage Analytics** - Track which browsers and rules are used most, with trends over time
- **Browser Profile Support** - Route to specific browser profiles (e.g., work Chrome profile vs personal)
- **Native macOS Design** - Built with SwiftUI for a beautiful, native experience that feels familiar
- **Real-time Sync** - Automatically detects when default browser changes
- **Theme Support** - Light, Dark, and System appearance modes
- **Launch at Login** - Start automatically with your Mac
- **Menu Bar Integration** - Runs quietly in the background without getting in your way

---

## Supported Browsers

Ruto works with all major browsers:
- Chrome (including profiles)
- Firefox (including Developer Edition)
- Safari
- Brave
- Arc
- Edge
- Orion
- And more

---

## System Requirements

- **macOS 13.0 (Ventura)** or later
- **Apple Silicon** or **Intel** Mac

---

## Installation

### Homebrew (Recommended)

```bash
brew install --cask ruto
```

Or via tap:

```bash
brew tap yourusername/ruto
brew install ruto
```

### Manual Download

1. Download the latest release from the [Releases](https://github.com/yourusername/ruto-releases/releases) page
2. Open the downloaded `.dmg` file
3. Drag **Ruto** to your Applications folder
4. Open Ruto from Applications (you may need to allow it in System Preferences > Security & Privacy)

---

## Quick Start

1. **Launch Ruto** from Applications
2. **Set Ruto as Default Browser** (optional) - Click "Set as default" in the sidebar footer
3. **Create Your First Rule**:
   - Click "Add Rule" in the All Rules view
   - Enter a pattern (e.g., `github.com` or `*.figma.com`)
   - Select your preferred browser
   - Click "Add"

4. **Test It Out** - Open a URL matching your rule and watch it route automatically!

---

## How It Works

You create rules that match URLs and tell Ruto which browser to use. It can be as simple as **youtube.com always opens in Brave** or as complex as regex patterns for specific workflows.

1. **Set Ruto as Default Browser** (optional but recommended)
2. When you click a link, macOS launches Ruto
3. Ruto checks your rules to find a match
4. If matched → Opens in the specified browser automatically
5. If no match → Shows overlay to choose browser (with option to remember)

The rules are flexible. You can match exact domains, use wildcards, or write full regex patterns if you need something more specific. Use the built-in regex tester to make sure your patterns work before saving them.

---

## Usage Examples

| Type | Pattern | Browser | Description |
|------|---------|---------|-------------|
| **Basic Domain** | `github.com` | Chrome | Routes all GitHub links to Chrome |
| **Regex** | `(github\.com\|gitlab\.com\|bitbucket\.org)` | Chrome | Routes all major Git hosting platforms to Chrome |

---

## Analytics

Ruto includes built-in analytics to help you understand your browsing patterns. It shows:
- Which rules trigger most often
- Which browsers you use the most
- Trends over time with date range filtering

This can be useful for optimizing your workflow and understanding your browsing habits.

---

## Design Philosophy

Ruto is designed to be simple and native. It lives in your menu bar, runs quietly in the background, and doesn't get in your way. The interface uses standard macOS patterns, so it feels familiar from the first time you open it.

It's one of those tools that you set up once and then forget about—until you realize how much time it's saving you.

---

## Documentation

- [Official Website](https://saiumesh.dev/apps/ruto)
- [User Guide](https://github.com/yourusername/ruto-releases/wiki)
- [Rule Patterns Guide](https://github.com/yourusername/ruto-releases/wiki/Rule-Patterns)
- [FAQ](https://github.com/yourusername/ruto-releases/wiki/FAQ)

---

## Links

- [Official Website](https://saiumesh.dev/apps/ruto)
- [Report Bug](https://github.com/yourusername/ruto-releases/issues)
- [Request Feature](https://github.com/yourusername/ruto-releases/issues)
- [Changelog](https://github.com/yourusername/ruto-releases/releases)

---

**Made for macOS users who want control over their browsing experience**
