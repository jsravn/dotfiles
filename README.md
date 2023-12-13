# dotfiles 2023 edition

These are my dotfiles, after I declared technical bankruptcy on my
[NixOS](https://github.com/jsravn/dotfiles-nixos) configuration.

Going for simple, fast, and lazy to get things done. It uses chezmoi for everything.

# manual stuff

```sh
# setup macbook defaults
sudo ~/.setup-mac.sh

# setup fish plugins
curl -sL https://git.io/fisher | source && fisher update

# import gpg key
keybase login
keybase pgp export -s | gpg --allow-secret-key-import --import

# setup vim
git clone https://github.com/LazyVim/starter ~/.config/nvim
nvim

# setup emacs
git clone git@github.com:jsravn/emacs-config ~/.config/doom
git clone https://github.com/hlissner/doom-emacs ~/.config/emacs; doom up
```
