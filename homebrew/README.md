# Homebrew

Formulae and casks can be exported and bulk-installed with the following
commands:

## Export

```
brew list --formula --installed-on-request > brew-formula.txt
```

```
brew list --cask --installed-on-request > brew-cask.txt
```

# Bulk Install

```
xargs brew install < brew-formula.txt
```

```
xargs brew install --cask < brew-cask.txt
```
