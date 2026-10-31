# Keypad profiles — moved to vizhi.dev

The Logi Options+ layouts for the MX Creative Keypad now live at **https://vizhi.dev/layouts/**,
with the setup guides, the FAQ and a SHA-256 for every file. That page is updated with each release.

This repository and its page (https://www.rshankar.com/keypad-profiles/) are kept so that older links
keep working. The four pre-2.4.0 files under `profiles/` stay downloadable and are byte-for-byte the
layouts they were; they are no longer updated.

| Old file (here) | Current file (vizhi.dev) |
|---|---|
| [`ClaudeConsole-Keypad.lp5`](profiles/ClaudeConsole-Keypad.lp5) | `VizhiClaudeCode-Terminal.lp5` |
| — | `VizhiClaudeCode-iTerm2.lp5` (new in 2.4.0) |
| [`ClaudeConsole-Windows.lp5`](profiles/ClaudeConsole-Windows.lp5) | `VizhiClaudeCode-WindowsTerminal.lp5` |
| [`VizhiCodex-Keypad.lp5`](profiles/VizhiCodex-Keypad.lp5) | `VizhiCodex-Terminal.lp5` |
| — | `VizhiCodex-iTerm2.lp5` (new in 1.7.0) |
| [`VizhiCodex-Windows.lp5`](profiles/VizhiCodex-Windows.lp5) | `VizhiCodex-WindowsTerminal.lp5` |

Claude Console is now **Vizhi for Claude Code**; the keys are unchanged, and a layout imported earlier
keeps working. Importing a new file next to an old one adds a second profile in Options+; delete the
old one afterwards.

The page keeps three help anchors that older plugin builds link to (`#codex-hook-trust`,
`#live-status-bridge`, `#windows-terminal`); each now points at the matching section on vizhi.dev.

Problems or requests: https://github.com/rshankras/vizhi/issues
