# Keypad profiles

Ready-made **Logi Options+ profiles** for the MX Creative Keypad, for use with the AI coding
plugins by Ravi Shankar on the Logi Marketplace:

| Plugin | Profile | Platform |
|---|---|---|
| Claude Console (Claude Code) | [`ClaudeConsole-Keypad.lp5`](profiles/ClaudeConsole-Keypad.lp5) | macOS (Terminal) |
| Claude Console (Claude Code) | [`ClaudeConsole-Windows.lp5`](profiles/ClaudeConsole-Windows.lp5) | Windows (Windows Terminal) |
| Vizhi for Codex (Codex CLI) | [`VizhiCodex-Keypad.lp5`](profiles/VizhiCodex-Keypad.lp5) | macOS (Terminal) |
| Vizhi for Codex (Codex CLI) | [`VizhiCodex-Windows.lp5`](profiles/VizhiCodex-Windows.lp5) | Windows (Windows Terminal) |
| Vizhi Desktop (ChatGPT / Codex desktop app) | coming with the plugin's release | macOS |

Download page: **https://www.rshankar.com/keypad-profiles/**

## How to import a profile

1. Install the plugin from the Logi Marketplace first, so the imported keys resolve to real actions.
2. Download the `.lp5` for your plugin and platform.
3. In **Logi Options+** → your **MX Creative Keypad**, open the profile menu (the `⋯` / profile
   dropdown) → **Import Profile** → pick the `.lp5`.
4. The profile installs under its own name and activates whenever its application is in front.
   Every key is pre-mapped; rebind or rearrange anything afterwards.

Import once. Updating or reinstalling the plugin leaves your profile in place.

## Maintaining the downloads

The `.lp5` files in `profiles/` are the public release copies. When a default layout changes:

1. Export and verify the macOS and Windows profiles in Logi Options+.
2. Replace the matching files in `profiles/` without changing their stable filenames.
3. Run `bash scripts/validate-profiles.sh` before committing.
4. Merge to `main`; GitHub Pages serves the updated downloads at the same URLs.

Pull requests and pushes are also checked automatically. The check rejects a missing, empty or
invalid profile archive and a download that is not linked from both this README and the Pages site.

## Support

Problems or requests: [open an issue](https://github.com/rshankras/keypad-profiles/issues).

## Terms

Copyright © 2026 Ravi Shankar. The profiles here are free to download and import for use with the
plugins named above. No other rights are granted. The plugins themselves are distributed only
through the Logi Marketplace.
