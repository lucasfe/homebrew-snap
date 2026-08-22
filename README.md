# homebrew-snap

The [Homebrew](https://brew.sh) tap for **Snap**, a macOS menu-bar screenshot
and annotation app.

## Install

```bash
brew tap lucasfe/snap
brew install --cask snap
```

## Upgrade

```bash
brew upgrade --cask snap
```

## Uninstall

```bash
brew uninstall --cask snap
brew untap lucasfe/snap
```

Uninstalling with the cask also removes Snap's preferences and keychain items,
so it leaves nothing behind.

## What is in this tap

- `Casks/snap.rb` — the cask that installs Snap.
- The signed and notarized `.dmg` artifacts are published as GitHub releases on
  this repository, so the cask and the binaries it points at share one home.

Snap's application source lives in a private repository. Only the signed,
notarized binary and this cask are public.

## Status

This tap is seeded but does not contain a published cask yet, so
`brew install --cask snap` will not find anything until the first release is
cut. `brew tap lucasfe/snap` works today. Remove this section once the first
cask is published.

## License

The contents of this tap — the cask definition and this documentation — are
released under the BSD 2-Clause License; see [LICENSE](LICENSE). Snap itself is
not covered by that license and is distributed only as a signed binary.
