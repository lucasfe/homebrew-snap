# homebrew-snap

The [Homebrew](https://brew.sh) tap for **Snap**, a macOS menu-bar screenshot
and annotation app.

## Install

```bash
brew tap lucasfe/snap
brew install --cask lucasfe/snap/snap
```

Spell the cask out as `lucasfe/snap/snap` on that first install. Homebrew 6
refuses to load a cask from a tap you have not trusted, so the short
`brew install --cask snap` fails with *"Refusing to load cask
lucasfe/snap/snap from untrusted tap lucasfe/snap"*. Naming the tap explicitly
counts as granting that trust: Homebrew prints `Trusted cask
lucasfe/snap/snap`, records it in `~/.homebrew/trust.json`, and installs. Every
later command can use the short name.

## Upgrade

```bash
brew upgrade --cask snap
```

## Uninstall

```bash
brew uninstall --cask snap
brew untap lucasfe/snap
```

That removes the app. To also remove Snap's preferences and keychain items, pass
`--zap`:

```bash
brew uninstall --zap --cask snap
```

## What is in this tap

- `Casks/snap.rb` — the cask that installs Snap.
- The signed and notarized `.dmg` artifacts are published as GitHub releases on
  this repository, so the cask and the binaries it points at share one home.

Snap's application source lives in a private repository. Only the signed,
notarized binary and this cask are public.

## License

The contents of this tap — the cask definition and this documentation — are
released under the BSD 2-Clause License; see [LICENSE](LICENSE). Snap itself is
not covered by that license and is distributed only as a signed binary.
