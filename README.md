# Homebrew tap for Margin

Margin is a menu bar Markdown notebook for macOS 26 or later.

```sh
brew install --cask tayler-id/margin/margin
```

The app is signed with Developer ID but not yet notarized, so macOS stops its first launch. Open System Settings, then Privacy & Security, and click Open Anyway beside Margin.

`brew uninstall --cask margin` removes the app. Add `--zap` to remove its settings and its Application Support folder too.
