alias ll='ls -Gla'
alias c='clear'

# git aliases
alias g='git status'
alias ga='git add .'
alias gam='git commit -am'
alias gd='git diff --color'
alias gl="git log --pretty=format:'%C(yellow)%h %C(green)%ad%x08%x08%x08%x08%x08%x08%x08%x08%x08 %C(yellow)[%an] %C(green)%s%d' --date=iso"
alias gb='git checkout -b'
alias gp='git pull --rebase'
alias gmb='git merge-base'
alias gr='git rebase -i'
alias gai='git add -i'

# dev stuff
alias cdd='. cdev'

# vagrant
alias vu='vagrant up'
alias vd='vagrant destroy'
alias vs='vagrant ssh'
alias vdu='vd -f ; vu'
alias vprv='vagrant provision'

# npm
alias nid='npm i -D'
alias nig='npm i -g'
echo "sourced bash_aliases"

#terraform
alias tf='terraform'

# custom shizz
alias a='. aliases'
alias src='. source_profile'

alias awsbit='source $DEV_HOME/terraform-sovrn/files/bitium/bitium.sh'
