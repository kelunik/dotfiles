# dotfiles

See also https://www.atlassian.com/git/tutorials/dotfiles.

## Setup

```bash
# Initialize Git repository
git init --bare $HOME/.cfg.git

# Alias git, so --git-dir isn't required for every command
alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'

# We don't want to track most files in the home directory, so ignore untracked ones
config config --local status.showUntrackedFiles no

# Permanently enable the alias by loading it on startup
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'" >> $HOME/.zshrc
```

```bash
# Alias git, so --git-dir isn't required for every command
alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'

# Avoid weird recursion problems
echo ".cfg.git" >> .gitignore

# Clone the repository
git clone --bare <url> $HOME/.cfg.git

# Permanently enable the alias by loading it on startup
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'" >> $HOME/.zshrc

# Checkout the repository contents in the home directory
config checkout

# We don't want to track most files in the home directory, so ignore untracked ones
config config --local status.showUntrackedFiles no
```
