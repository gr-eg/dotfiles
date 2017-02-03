# dotfiles

These dotfiles are managed using the technique outlined [here](https://developer.atlassiana.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

To install on a new machine:
```
git clone --bare git@github.com:gr-eg/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```
