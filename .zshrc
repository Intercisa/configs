# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Path to your oh-my-zsh installation.
export ZSH="/home/bsipiczki/.oh-my-zsh"
export TERM="xterm-256color"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline vcs)

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
command_not_found_handler () {
    if [ -x /usr/lib/command-not-found ]
    then
        /usr/lib/command-not-found -- "$1"
        return $?
    else
        if [ -x /usr/share/command-not-found/command-not-found ]
        then
            /usr/share/command-not-found/command-not-found -- "$1"
            return $?
        else
            printf "%s: command not found\n" "$1" >&2
            return 127
        fi
    fi
}

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git zsh-autosuggestions
       	zsh-syntax-highlighting
	extract
	colorize
	sudo
 	web-search
 	git-extras
 	docker
 	wd
 	colored-man-pages
 	encode64
 	taskwarrior
	npm
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
#
export PATH="$PATH:./node"
# Example aliases
alias smc="sudo -H mc"
alias zshconfig="vim ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="ls -lha"
alias ifconfig="ip -c a | sed -e 's/\//\//g'"
alias ng="./node_modules/.bin/ng"
alias d="docker"
alias dps="docker ps -a"
alias cls="clear"
alias sjava="sudo update-alternatives --config java"
alias sjavac="sudo update-alternatives --config javac"
alias grep="grep --color=auto"
alias sysl="tail /var/log/syslog"
alias g="git"
alias txv="tmux new-session \; split-window -v \; attach"
alias txh="tmux new-session \; split-window -h \; attach"
alias dev-portal-admin="echo -e $'https://localhost:8443/hu/web/agazati-admin-portal/admin-bejelentkezes\nA00721\nQ2zTPpXGsymFe5\nhttps://localhost:8443/hu/web/guest/hatosagi-modul'"
alias conu="nmcli con up"
alias cond="nmcli con down"
alias conll="nmcli con"

#cd
alias ~="cd ~"
alias -- -="cd -"
alias ..="cd .."
alias ..2="cd ../.."
alias ...="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."


# source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
export PATH="$(systemd-path user-binaries):$PATH"

zle     -N   fzf-history-widget
bindkey '^R' fzf-history-widget
