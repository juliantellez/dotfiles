# VIRTUALENVWRAPPER #
###################
  export WORKON_HOME=$HOME/.virtualenvs
  export PIP_VIRTUALENV_BASE=$WORKON_HOME
  source /usr/local/bin/virtualenvwrapper.sh

# PSYCOPG2 #
###################
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin:~/bin
  export CFLAGS=-Qunused-arguments

# KARMA #
###################
  export PATH=$PATH:/usr/local/lib/node_modules/karma/bin

# EDITOR #
###################
  export EDITOR='subl -w'

# NVM #
###################
  export NVM_DIR="/Users/juliantellez/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# AVN #
###################
  [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh"

# GIT #
###################
  # NOTE: requires --> brew install git bash-completion

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
  fi

  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true

  if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
    . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
  fi

# PS1 CONFIG #
###################
## TODO organise this PS1 thing better ;)

  node_version_prompt() {
    if [ -f `which node` ]; then
      node_version=`node --version | sed -e 's/ .*//'`
      echo -e 'node:' $node_version
    fi
  }

  # export PS1="\[\033[1;34m\]\w [$(node_version_prompt)]\033[32m\] "

  if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
    PS1='\[\033[1;34m\]\w \[\033[00m\]$(__git_ps1 "\[\033[0;33m\](%s)\[\033[00m\]") \[\033[1;32m\][$(node_version_prompt)] \[\033[32m\]\$ '
  else
    PS1='\[\033[1;34m\]\w \[\033[1;32m\][$(node_version_prompt)] \[\033[32m\]\$ '
  fi
