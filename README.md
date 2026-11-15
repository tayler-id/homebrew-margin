# Homebrew tap for Margin

Margin is a menu bar Markdown notebook for macOS 26 or later.

```sh
brew tap tayler-id/margin
brew trust tayler-id/margin
brew install --cask margin
```

Homebrew loads a cask from another person's tap only once you trust that tap.

The app is signed with Developer ID and notarized by Apple, so it opens on its first launch. To update later, run `brew upgrade --cask margin`.

`brew uninstall --cask margin` removes the app. Add `--zap` to remove its settings and its Application Support folder too.

Documentation: <https://tayler-id.github.io/margin-releases/>
