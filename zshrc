# import my functions
source ~/.functions
source ~/scripts/streams.sh
source ~/scripts/selectstreams.sh
source ~/scripts/isnumber.sh
source ~/scripts/remind.sh

# COMPLETION SETTINGS
# add custom completion script
##fpath=(/Users/Lukas/.oh-my-zsh/completions $fpath)

# compsys initialization
##autoload -Uz compinit
##compinit

#compdef '_lollollol test1 test2 test3' lollollol

# show completion menu when number of options is at least 2
##zstyle ':completion:*' menu select=2

# enable interactive mode for mv, rm, cp (asks before overwriting)
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# livestream linked alias
#	Nightblue3
alias nb3="livestream nightblue3"
alias nightblue="livestream nightblue3"
alias nightblue3="livestream nightblue3"
#	RiotGames
alias riot="livestream riotgames"
alias riotgames="livestream riotgames"
#	esl_summonersinn
alias maxim="livestream esl_summonersinn"
alias suminn="livestream esl_summonersinn"
#	Sodapoppin
alias soda="livestream sodapoppin"
alias sodapoppin="livestream sodapoppin"
#	SummonersInnLive
alias gerlcs="livestream SummonersInnLive"
alias summonersinnlive="livestream SummonersInnLive"
#	esl_csgo
alias csesl="livestream esl_csgo"
alias eslcs="livestream esl_csgo"
alias esl_csgo="livestream esl_csgo"
#	esl_lol
alias lolesl="livestream esl_lol"
alias esl_lol="livestream esl_lol"
alias esllol="livestream esl_lol"
#	SirhcEz
alias sirhcEz="livestream SirhcEz"
alias sirhcez="livestream SirhcEz"
#	PhreakStream
alias phreakStream="livestream PhreakStream"
alias phreak="livestream PhreakStream"
#	Summit1g
alias summit="livestream Summit1g"
alias summit1g="livestream Summit1g"
#	Cyanide
alias cyanide="livestream Cyanide"
#	FACEITTV
alias face="livestream FACEITTV"
alias faceit="livestream FACEITTV"
alias faceittv="livestream FACEITTV"
#	FragbiteLive
alias fragbite="livestream FragbiteLive"
alias fragbitelive="livestream FragbiteLive"
#	Meteos
alias meteos="livestream Meteos"
#	TSM_Bjergsen
alias bjerg="livestream TSM_Bjergsen"
alias bjergsen="livestream TSM_Bjergsen"
#	Zionspartan
alias zion="livestream Zionspartan"
alias zionspartan="livestream Zionspartan"
#	Trick2g
alias trick="livestream Trick2g"
alias trick2g="livestream Trick2g"
#	Kylelandrypiano
alias kyle="livestream Kylelandrypiano"
alias kylean="livestream Kylelandrypiano"
alias kyleandry="livestream Kylelandrypiano"
alias kyleandrypiano="livestream Kylelandrypiano"
alias kylepiano="livestream Kylelandrypiano"
#	dota2ti
alias ti="livestream dota2ti"
alias dota2ti="livestream dota2ti"
#	dota2ti_noob
alias dota2newcomer="livestream dota2ti_newcomer"
alias dota2tinewcomer="livestream dota2ti_newcomer"
alias dota2ti_newcomer="livestream dota2ti_newcomer"
#	Pewdiepie
alias pew="livestream Pewdiepie"
alias pewdiepie="livestream Pewdiepie"
#	GamesDoneQuick
alias gdq="livestream GamesDoneQuick"
alias gamesdonequick="livestream GamesDoneQuick"

# alias for applications
alias vlc="open -a vlc"
alias vox="open -a vox"

alias spotify="spotipy-tui"

alias stream="selectstreams"

#	default SublimeText3 project Workspace
alias std="open ~/dotfiles/SublimeText3/ProjectWorkspaces/default.sublime-project"

alias math="python3 ~/python/math.py"
alias isprime="python3 ~/python/isprime.py"

#################################################################################################################

# Path to your oh-my-zsh installation.
export ZSH=/Users/Lukas/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git terminalapp brew textmate web-search sublime osx battery)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# important line for autojump plugin
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
