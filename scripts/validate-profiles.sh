#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

profiles=(
  ClaudeConsole-Keypad.lp5
  ClaudeConsole-Windows.lp5
  VizhiCodex-Keypad.lp5
  VizhiCodex-Windows.lp5
)

for profile in "${profiles[@]}"; do
  profile_file="$ROOT/profiles/$profile"
  if [ ! -s "$profile_file" ]; then
    echo "error: missing or empty profile: profiles/$profile" >&2
    exit 1
  fi

  unzip -tq "$profile_file" >/dev/null
  # Capture before matching: with pipefail, grep -q can close the pipe after a match and make
  # unzip's harmless SIGPIPE look like a corrupt profile.
  entries="$(unzip -Z1 "$profile_file")"
  grep -Fxq ApplicationInfo.json <<<"$entries" || {
    echo "error: profiles/$profile has no ApplicationInfo.json" >&2
    exit 1
  }
  grep -Fxq ProfileInfo.json <<<"$entries" || {
    echo "error: profiles/$profile has no ProfileInfo.json" >&2
    exit 1
  }

  case "$profile" in
    *-Keypad.lp5) expected_application="com.apple.terminal" ;;
    *-Windows.lp5) expected_application="windowsterminal" ;;
  esac
  application_info="$(unzip -p "$profile_file" ApplicationInfo.json)"
  profile_info="$(unzip -p "$profile_file" ProfileInfo.json)"
  application_name="$(jq -er .name <<<"$application_info")"
  profile_application="$(jq -er .applicationName <<<"$profile_info")"
  if [ "$application_name" != "$expected_application" ] || [ "$profile_application" != "$expected_application" ]; then
    echo "error: profiles/$profile is bound to '$application_name'/'$profile_application', expected '$expected_application'" >&2
    exit 1
  fi

  grep -Fq "profiles/$profile" "$ROOT/index.html" || {
    echo "error: index.html does not link profiles/$profile" >&2
    exit 1
  }
  grep -Fq "profiles/$profile" "$ROOT/README.md" || {
    echo "error: README.md does not link profiles/$profile" >&2
    exit 1
  }
done

echo "Validated ${#profiles[@]} profile downloads."
