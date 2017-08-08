export DEV_HOME=~/dev

if [ -f ~/.bash_alias ]; then
    source ~/.bash_alias
fi

# go setup
export GOPATH=~/dev/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# git auto complete
# get script from 
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
test -f ~/.git-completion.bash && . $_
