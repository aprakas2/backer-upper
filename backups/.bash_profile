export DEV_HOME=~/dev

# homebrew python
# https://stackoverflow.com/questions/49704364/make-python3-as-my-default-python-on-mac
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=$PATH:/Users/aprakash/Library/Python/3.7/bin

# mysql
export PATH=/usr/local/mysql/bin:$PATH

# flyway
export PATH=$PATH:/usr/local/opt/flyway-5.1.4

# go setup
export GOPATH=$DEV_HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
# weird version downgradey stuff:
#export PATH=$PATH:/usr/local/opt/go@1.9/bin
#export GOROOT=/usr/local/opt/go@1.9/

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

# hasura completion scripts
# sudo hasura completion bash --file=$(brew --prefix)/etc/bash_completion.d/hasura

# git shell prompt
. ~/bin/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '


echo "sourced bash_profile"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
