# Homebrew

The lists record the packages currently managed by Homebrew on this Mac.

- `brew-formula.txt` and `Brewfile` contain explicitly requested formulae.
  Homebrew installs their dependencies automatically.
- `brew-cask.txt` and `Caskfile` contain installed casks.
- `Brewfile` also records the installed taps. `Caskfile` includes the taps its
  apps need, so it can be used separately.
- Third-party packages use fully qualified names to preserve their source tap.

The manifests were refreshed on 2026-11-21. Apps installed manually or through
Setapp are not added as Homebrew casks.

The existing Drafts App Store entry is preserved in `Caskfile`. `mas list` could
not enumerate installed App Store apps during this refresh, so that section is
not a fresh App Store inventory.

## Export

Run these from the dotfiles root:

```sh
brew list --formula --installed-on-request --full-name | LC_ALL=C sort > homebrew/brew-formula.txt
```

```sh
brew list --cask --full-name | LC_ALL=C sort > homebrew/brew-cask.txt
```

Keep the matching `brew`/`cask` entries in the manifests in sync when refreshing
the text exports. Preserve their `tap` declarations and intentional `mas` entries.

## Install

From the dotfiles root, use the existing Makefile targets:

```sh
make brew-packages
make cask-apps
```

Alternatively, install from the text lists:

```sh
xargs brew install --formula < homebrew/brew-formula.txt
```

```sh
xargs brew install --cask < homebrew/brew-cask.txt
```

These are installed-state records, not a promise that every upstream recipe
will remain available. The CodeLayer cask is retained from its installed metadata;
its upstream definition may need replacing before reinstalling it.
