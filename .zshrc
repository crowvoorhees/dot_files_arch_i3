# Path to your oh-my-zsh installation.
export ZSH=/home/crowvoorhees/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fino_c"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

DISABLE_UPDATE_PROMPT=true

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
ZSH_CUSTOM=/home/crowvoorhees/Github/dot_files_arch_i3/.oh-my-zsh/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting web-search tmux)

# User configuration

export PATH="/usr/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export MANPAGER="env MAN_PN=1 vim -M +MANPAGER -"
export GIT_PAGER=cat
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls -hF --color=tty'
alias la='ls -a'
alias ll='ls -l'
alias lla='ll -a'
alias tree='tree -C'
alias ta='tree -a'
alias clock='tty-clock -c -C 4 -t -f %d%b%Y -b'
alias tmuxkill='tmux kill-session -a'
alias mymenu='cat ~/.mymenu'
alias pacup='sudo pacman -Syu'
alias yup='yaourt -Syu --aur'
alias screenfetch='screenfetch -c 4, 1'
alias mocp='mocp -T darkdot_theme'
alias minitube_audio_fix='sudo mv /usr/lib/vlc/plugins/audio_output/libpulse_plugin.so /usr/lib/vlc/plugins/audio_output/libpulse_plugin.so_bak'
alias i3statusconfig='sudo vim /etc/i3status.conf'
alias i3config='vim ~/.i3/config' 
alias zshrc='vim ~/.zshrc'
alias bashrc='vim ~/.bashrc'
alias fishrc='vim ~/.fishrc'
alias glog="git --no-pager log --graph --oneline --decorate --all --pretty=format:'%Cred%h%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gstatus='git status -sb'
alias gbranches='git branch --all'
alias gadd='git add --all'
alias gcommit='git commit -m'
alias pipes='bash ~/Scripts/pipes.sh'
alias rain='bash ~/Scripts/rain.sh'
alias pacclean='paccache -rk2 && paccache -ruk0' # removes cached installed packages up to the last 2 versions and all uninstalled packages

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -U compinit
