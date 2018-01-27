

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git github sudo web-search)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='emacs'
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


##ROS
#source /opt/ros/indigo/setup.zsh
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
#export http_proxy='http://10.3.100.207:8080'
#export https_proxy='http://10.3.100.207:8080'
#export HTTP_PROXY='http://10.3.100.207:8080'
#export HTTPS_PROXY='http://10.3.100.207:8080'

#alias emacs='open -a /Applications/Emacs.app'

##HADOOP
export HADOOP_HOME=/usr/local/Cellar/hadoop/2.7.2
export HADOOP_PREFIX=$HADOOP_HOME/libexec
export HADOOP_CONF_DIR=$HADOOP_HOME/libexec/etc/hadoop
export PIG_HOME=/usr/local/Cellar/pig/0.16.0
export HADOOP_MAPRED_HOME=$HADOOP_PREFIX
export HADOOP_COMMON_HOME=$HADOOP_PREFIX
export HADOOP_HDFS_HOME=$HADOOP_PREFIX 
export YARN_HOME=$HADOOP_PREFIX 
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin 
export HADOOP_INSTALL=$HADOOP_HOME
export HBASE_HOME=/usr/local/Cellar/hbase/1.2.2/libexec
export HBASE_CONF_DIR=$HBASE_HOME/conf

##Add profile settings
source ~/.profile

##Appdynamics
alias gateway='ssh -i ~/Documents/pems/cps-common-us-west2.pem  ubuntu@ec2-35-167-23-210.us-west-2.compute.amazonaws.com'
alias dc2='ssh -t soumyadeep.mukherjee@neptune.saas.appdynamics.com'
id() {
	docker ps | grep "$1" | awk -F' ' '{print $1}'
}
export PATH="/usr/local/opt/opencv3/bin:$PATH"
alias k='kubectl'
alias loadgen='ssh -i ~/Documents/pems/cps_sr.pem  ec2-user@52.33.86.191'

sshsaas() {
	echo "Fetching hosts for "$1
	hostdata=$(curl -s "http://debug.saas.appdynamics.com/data/app/$1/node")
	hostnames=( $(echo $hostdata | jq '.[] | .node_name') )
	statuses=( $(echo $hostdata | jq '.[] | .controller_status') )

	n=${#hostnames[@]}
	COMB=()
	for (( i=1; i<=n; i++ ))
	do
		COMB[$i]=${hostnames[$i]//\"}":"${statuses[$i]//\"}
	done
	COMB+=(quit)

	PS3='Which host do you want to ssh to?(Type the number and hit enter):'
	select opt in "${COMB[@]}"
	do
		case $opt in
			"quit")
				break
				;;
			*)
				hostname=$(echo $opt | cut -d':' -f1 | sed 's/$/.ord.app.dy/')
				ssh $hostname
				break
				;;
		esac
	done
}

alias gw='./gradlew'
alias grst='git reset --hard HEAD'
alias gpom='git pull origin master'
