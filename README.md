# dotfiles

See also https://www.atlassian.com/git/tutorials/dotfiles.

## Setup

```bash
git init --bare $HOME/.cfg.git
alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'" >> $HOME/.zshrc
```

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
echo ".cfg.git" >> .gitignore
git clone --bare <url> $HOME/.cfg.git
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'" >
> $HOME/.zshrc
config checkout
config config --local status.showUntrackedFiles no
```
