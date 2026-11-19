# Homebrew tap for Noteki

[Noteki](https://github.com/mameli/Noteki) is a light native app to read and write the Markdown notes of an Obsidian vault, written in Rust. This tap installs the Mac app.

```sh
brew tap mameli/noteki
brew trust mameli/noteki
brew install --cask noteki
```

Homebrew asks to trust a tap that is not its own once (`brew trust`). Noteki then updates itself: `brew upgrade` leaves it alone.

Uninstall with `brew uninstall --cask noteki`; add `--zap` to also delete Noteki's settings. Your notes are never touched: they stay in your vault.

The cask is updated by `scripts/release.sh` in the Noteki repository at every release.
