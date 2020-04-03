export DEV_HOME=~/dev

# default to java8
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_131-zulu-8.21.0.1`

# homebrew python
# https://stackoverflow.com/questions/49704364/make-python3-as-my-default-python-on-mac
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=$PATH:/Users/aprakash/Library/Python/3.7/bin

# confluent
export CONFLUENT_HOME=$DEV_HOME/confluent-5.4.0/
export PATH=$DEV_HOME/confluent:$PATH

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

# node
export NODE_ENV=dev

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
# test -f ~/.git-completion.bash && . $_
test -f /usr/local/etc/bash_completion.d/git-completion.bash && . $_
# git shell prompt
#. ~/bin/git-prompt.sh
test -f /usr/local/etc/bash_completion.d/git-prompt.sh && . $_
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '

# hasura completion scripts
# sudo hasura completion bash --file=$(brew --prefix)/etc/bash_completion.d/hasura

 if [[ ${SHELL} != "/bin/sh" ]]; then
     test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
 fi

# sovrn vault
export VAULT_ADDR=https://vault.lijit.com

echo "sourced bash_profile"

