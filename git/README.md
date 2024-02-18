# git

## 1Password and SSH authentication

Make sure there is a `~/.ssh` folder first.

Then turn on the 1Password SSH agent:
https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent

Remember when cloning repositories to use a `git@` URI. If its starts with
`https://` its not going to work with SSH keys!

## GPG Setup

Reference:

- https://medium.com/@rwbutler/signing-commits-using-gpg-on-macos-7210362d15
- https://stackoverflow.com/questions/51497330/signing-git-commits-on-macos-keeps-asking-for-passphrase
- https://askubuntu.com/questions/805459/how-can-i-get-gpg-agent-to-cache-my-password

GPG setup is done to be able to sign commits and tags locally from your machine.

On macOS, install GPGSuite. This will be done automatically through homebrew
using the install commands.

Add this to `~/.gnupg/gpg-agent.conf`:

```
pinentry-program /usr/local/bin/pinentry-mac
```

Import the `.asc` GPG key (stored in 1Password) into GPG Suite. This will be
configured with keychain so that you don't have to provide your password when
signing things.

If you have run the `bootstrap` script, then you should have already provided
the ID of your signing key. _Ensure you have the correct key ID set in the
`gitconfig.local.symlink` file. This key ID should be in 1Password too, or you
can use GPG Suite to look it up._

Don't forget that you should provide the same email set as committer information
as is set in the GPG key used to sign the commits.
