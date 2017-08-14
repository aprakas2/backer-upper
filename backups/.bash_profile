export DEV_HOME=~/dev

# go setup
export GOPATH=~/dev/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# selenium
export PATH=$PATH:$DEV_HOME/selenium/drivers

# custom scripts
export PATH=$PATH:~/bin

# load alias file
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# git auto complete
# get script from 
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
test -f ~/.git-completion.bash && . $_
