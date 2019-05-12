# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

alias hosts='sudo vim /etc/hosts'

alias push='git push'
alias master='git checkout master'

alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

alias phpini='vi $HOME/.phpenv/versions/$(phpenv version-name 2>/dev/null)/php.ini'
alias phpgdb='gdb $(phpenv which php)'

alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
