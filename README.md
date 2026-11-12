# Homebrew tap for Noteki

[Noteki](https://github.com/mameli/Noteki) is a light native macOS app to read and write the Markdown notes of an Obsidian vault.

```sh
brew install --cask mameli/noteki/noteki
```

Uninstall with `brew uninstall --cask noteki`; add `--zap` to also delete Noteki's settings. Your notes are never touched: they stay in your vault.

The cask is updated by `scripts/release.sh` in the Noteki repository at every release.
