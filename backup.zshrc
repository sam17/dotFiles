# Path to your oh-my-zsh installation.
export ZSH=/Users/dementor/.oh-my-zsh

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
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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


##ROS
#source ~/ros_catkin_ws/install_isolated/setup.zsh
#export CATKIN_WORKSPACE=/home/dementor/catkin_ws
#source $CATKIN_WORKSPACE/devel/setup.zsh
#export EDITOR=emacs24

##TELEKYB
#export TELEKYB=$CATKIN_WORKSPACE/src/telekyb
#export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$CATKIN_WORKSPACE/src/telekyb/
#export TELEKYB_CMAKE_SCRIPTS_DIR=$TELEKYB/cmake_scripts
#export ViconDataStreamSDKCPP_ROOT=$TELEKYB/external_libraries/ViconDataStream_SDK

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


##Proxy
# export http_proxy='http://172.16.2.30:8080'
# export https_proxy='http://172.16.2.30:8080'
# export HTTP_PROXY='http://172.16.2.30:8080'
# export HTTPS_PROXY='http://172.16.2.30:8080'

#alias emacs='open -a /Applications/Emacs.app'

export GOPATH="$HOME/Self/go/"

export NVM_DIR="/Users/dementor/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias socks5='ssh -p 443 -D 8123 -f -q -C -N root@128.199.125.117  && /Applications/Firefox.app/Contents/MacOS/firefox &'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /Users/dementor/.rvm/scripts/rvm

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

alias quine='ssh -i ~/Documents/quine.pem ubuntu@ec2-35-154-27-20.ap-south-1.compute.amazonaws.com'
#export PATH="/usr/local/opt/opencv3/bin:$PATH"
export PATH="/usr/local/opt/opencv3/bin:$PATH"

alias ecs='emacsclient -n'
export PATH=/usr/local/anaconda3/bin:"$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dementor/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/dementor/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dementor/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/dementor/google-cloud-sdk/completion.zsh.inc'; fi

alias gpom='git pull origin master'
alias grst='git reset --hard HEAD'
. /Users/dementor/anaconda3/etc/profile.d/conda.sh

### Self
alias azkaban="ssh root@142.93.214.204"

### Prachaar
alias prachaar-prod="ssh root@139.59.93.230"

### Morphle
alias morphle-prod="ssh root@206.189.131.16"
alias morphle-utils="ssh root@159.65.158.244"
alias morphle-staging="ssh root@139.59.6.176"
export MORPHLE_HOME=~/Mirror/morphle-data/
export DEPLOYMENT_MODE=offline
export SCANNER_HOME=$MORPHLE_HOME/Morphle/
export PYTHONPATH=~/morphle-src/morpheus/src
export USER_HOME=~/
export SCANNER_NAME=meganium
export CONFIG_PATH="${USER_HOME}/morphle-src/scano/devops/config/scano/${SCANNER_NAME}.yaml"
export USB_PORT=/dev/ttyACM0
export LAST_PREVIEW_LOCATION="${USER_HOME}/morphle_home/Morphle/dev/debug/"
export MORPHLE_APP=~/morphle-src/morpheus
export SCAN_DRIVE=/Volumes/Seagate\ Backup\ Plus\ Drive/Morphle/
export GOOGLE_APPLICATION_CREDENTIALS=~/Downloads/service_account.json
export REDIS_HOST="localhost"
export REDIS_PORT=6379
export JENKINS_TOKEN="113988a14e6a2507f0c0d840223bd4b796"
