alias ll='ls -Gla'
alias c='clear'

# git aliases
alias g='git status'
alias ga='git add .'
alias gd='git diff --color'
alias gl="git log --pretty=format:'%C(yellow)%h %C(green)%ad%x08%x08%x08%x08%x08%x08%x08%x08%x08 %C(yellow)[%an] %C(green)%s%d' --date=iso"
alias gb='git branch -a'
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

echo "sourced bash_aliases"
