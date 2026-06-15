# Edge Delta Homebrew Tap

A [Homebrew](https://brew.sh) tap for distributing Edge Delta command-line
tools on **macOS and Linux** (Intel and Apple Silicon / arm64).

## Install

```bash
brew install edgedelta/pack/edx
```

Or tap first, then install:

```bash
brew tap edgedelta/pack
brew install edx
```

Or with a `Brewfile`:

```ruby
tap "edgedelta/pack"
brew "edx"
```

## Upgrade

```bash
brew update
brew upgrade edx
```

## Uninstall

```bash
brew uninstall edx
brew untap edgedelta/pack
```

## Available formulae

| Formula | Description | Source |
|---------|-------------|--------|
| `edx`   | Edge Delta command line interface | [edgedelta/edx](https://github.com/edgedelta/edx) |

## How this tap is maintained

Formulae in `Formula/` are **auto-generated**. When a new version of a tool is
released, [GoReleaser](https://goreleaser.com) builds the cross-platform
binaries, publishes them to that project's GitHub Releases, and commits the
updated formula here. Do not edit `Formula/*.rb` by hand — changes will be
overwritten on the next release.

See [`edgedelta/edx`](https://github.com/edgedelta/edx)'s `.goreleaser.yaml`
and release workflow for the publishing setup.

## License

[Apache-2.0](LICENSE)
