# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="spaceship"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

COMPLETION_WAITING_DOTS="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

source $HOME/.profile
source $HOME/.bash_aliases

eval "$(hub alias -s)"

source "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

SPACESHIP_PROMPT_ORDER=(
    time
    user
    dir
    host
    git
    exec_time
    line_sep
    battery
    jobs
    exit_code
    char
)

SPACESHIP_GIT_STATUS_SHOW=false

export PHP_CS_FIXER_IGNORE_ENV=1
