# Path to your oh-my-zsh installation.
export ZSH=/Users/soumyadeepmukherjee/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git github sudo web-search zsh-syntax-highlighting zsh-autosuggestions)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
 else
	export EDITOR='vi'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export GOPATH="$HOME/Self/go/"
export PATH=$PATH:${GOPATH}/bin

# export NVM_DIR="/Users/dementor/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#source /Users/dementor/.rvm/scripts/rvm

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/emulator:${ANDROID_HOME}/tools

export PATH="/usr/local/opt/opencv3/bin:$PATH"

alias ecs='emacsclient -n'
export PATH=/usr/local/anaconda3/bin:"$PATH"

alias gpom='git pull origin master'
alias grst='git reset --hard HEAD'
alias co='checkout'
alias 'headphone-con'='BluetoothConnector --connect 00-16-94-1f-88-0d --notify'
alias 'headphone-disc'='BluetoothConnector --disconnect 00-16-94-1f-88-0d --notify'

### Self
alias azkaban="ssh dementor@206.189.140.208"
alias scanpix="ssh soumyadeep@165.232.139.243"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/soumyadeepmukherjee/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/soumyadeepmukherjee/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/soumyadeepmukherjee/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/soumyadeepmukherjee/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
unset SUDO_UID SUDO_GID SUDO_USER
# <<< conda initialize <<<


### Kubernetes
alias kprodsin='kubectl -n prod --context=sin0'
alias kprodcen='kubectl -n prod --context=cen0'
alias kprodm='kubectl -n prod --context=sin0 -n monitoring'
alias kprodn='kubectl -n prod --context=sin0 -n ingress-nginx'
alias kdevn='kubectl -n dev --context=cen0 -n ingress-nginx'
alias kdev='kubectl -n dev --context=cen0'
alias kdevl='kubectl -n linkerd --context=cen0'
alias kdevm='kubectl -n dev --context=cen0 -n monitoring'
alias kceni='kubectl -n infra --context=cen0'
alias ksini='kubectl -n infra --context=sin0'
alias kud='kubectl --context=k8s0'
alias vpn3p='ssh udaan@10.255.0.6'
alias 1passudaan='eval $(op signin team_udaan)'
alias jumpbox='ssh soumyadeep@gw-tata.hq.udaan.io'
alias kgpods='kprod get po | grep '
alias kglogs='kprod logs -f '
alias k='kubectl'
alias vpnhw='ssh udaan@10.7.0.4'
alias paymentjb='ssh soumyadeep@10.4.0.132'
alias kudm='kubectl --context=k8s0 -n monitoring'

### Postgres
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/soumyadeepmukherjee/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/soumyadeepmukherjee/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/soumyadeepmukherjee/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/soumyadeepmukherjee/google-cloud-sdk/completion.zsh.inc'; fi

pip_install_save() {
    package_name=$1
    requirements_file=$2
    if [[ -z $requirements_file ]]
    then
        requirements_file='./requirements.txt'
    fi
    pip install $package_name && pip freeze | grep -i $package_name >> $requirements_file
}
source $HOME/.cargo/env
export PATH="/usr/local/opt/node@8/bin:$PATH"
export GPG_TTY=$(tty)


export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH=$PATH:~/istio-1.8.0/bin
eval $(/opt/homebrew/bin/brew shellenv)
export PATH="/opt/homebrew/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.9`
export OPENSSL_ROOT_DIR=/opt/homebrew/opt/openssl@3
source /Users/soumyadeepmukherjee/Self/openpilot/tools/openpilot_env.sh
source /Users/soumyadeepmukherjee/Self/openpilot/tools/openpilot_env.sh
