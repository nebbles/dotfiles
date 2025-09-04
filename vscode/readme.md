# Code JSON configurations

The following files manage VS Code settings (except installed extensions) and
are taken from `~/Library/Application Support/Cursor/User/settings.json` etc.

```
keybindings.json
settings.json
tasks.json
```

To use the files defined in this repo:

1. Close VS Code.

2. Remove the existing configuration files.

   ```
   rm ~/Library/Application\ Support/Code/User/settings.json
   rm ~/Library/Application\ Support/Code/User/keybindings.json
   rm ~/Library/Application\ Support/Code/User/tasks.json
   ```

3. Create symbolic links.

   ```
   ln -s ~/.dotfiles/vscode/settings.json    ~/Library/Application\ Support/Code/User/settings.json
   ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
   ln -s ~/.dotfiles/vscode/tasks.json       ~/Library/Application\ Support/Code/User/tasks.json
   ```

For Cursor

```
rm -f ~/Library/Application\ Support/Cursor/User/settings.json    && ln -s ~/.dotfiles/vscode/settings.json    ~/Library/Application\ Support/Cursor/User/settings.json
rm -f ~/Library/Application\ Support/Cursor/User/keybindings.json && ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
rm -f ~/Library/Application\ Support/Cursor/User/tasks.json       && ln -s ~/.dotfiles/vscode/tasks.json       ~/Library/Application\ Support/Cursor/User/tasks.json
```

For Windsurf

```
rm -f ~/Library/Application\ Support/Windsurf/User/settings.json    && ln -s ~/.dotfiles/vscode/settings.json    ~/Library/Application\ Support/Windsurf/User/settings.json
rm -f ~/Library/Application\ Support/Windsurf/User/keybindings.json && ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Windsurf/User/keybindings.json
rm -f ~/Library/Application\ Support/Windsurf/User/tasks.json       && ln -s ~/.dotfiles/vscode/tasks.json       ~/Library/Application\ Support/Windsurf/User/tasks.json
```

# Extensions

The list of extensions came from

```
code --list-extensions
```

To install

```
code --install-extension EXTENSION
```

To install them in bulk:

```
xargs -I {} cursor --install-extension {} < ~/.dotfiles/vscode/extensions.txt
```
