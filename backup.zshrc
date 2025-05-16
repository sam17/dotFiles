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

alias gpom='git pull origin master'
alias grst='git reset --hard HEAD'
alias co='checkout'

### Self
alias azkaban="ssh dementor@206.189.140.208"
alias scanpix="ssh soumyadeep@165.232.139.243"


### Kubernetes
alias k='kubectl'
alias kcen='kubectl --context=k8s-cen'
alias kaws='kubectl --context=aps1'
alias kazus='kubectl --context=wus'

### Postgres
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

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
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/Users/soumyadeepmukherjee/.gem/ruby/3.1.0/bin:$PATH"
eval "$(rbenv init - zsh)"

## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/soumyadeepmukherjee/.dart-cli-completion/zsh-config.zsh ]] && . /Users/soumyadeepmukherjee/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH="/Users/soumyadeepmukherjee/.shorebird/bin:$PATH"
export MODULAR_HOME="/Users/soumyadeepmukherjee/.modular"
export PATH="/Users/soumyadeepmukherjee/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc'; fi

export CODEFLASH_API_KEY='cf-hRuLff7BHQIKBpJppwIIkm6OGSjOAwdScqC9CzcRuxiQwm9SCE70t9jpJEetWvb3'

. "$HOME/.local/bin/env"
