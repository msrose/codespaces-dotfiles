# codespaces-dotfiles

See the GitHub docs for more info on custom dotfiles: https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-github-codespaces-for-your-account#dotfiles

* The `install.sh` script must be executable: `chmod +x install.sh`

You can ssh into any of your codespace using the GitHub CLI (it will show an interactive prompt for you to pick the codespace):

```
gh codespaces ssh
gh cs ssh # for short
```

You may need to install the sshd feature in your devcontainer file:

```
...
"features": {
    ...
    "ghcr.io/devcontainers/features/sshd:1": {
        "version": "latest"
    },
    ...
}
...
```

TODO:
* oh-my-zsh
* ~universal-ctags~
* vim plugins
