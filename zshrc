# import my functions
source ~/.functions
source ~/scripts/streams.sh
source ~/scripts/selectstreams.sh
source ~/scripts/isnumber.sh
source ~/scripts/remind.sh
source ~/scripts/octavepwd.sh

# enable interactive mode for mv, rm, cp (asks before overwriting)
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Python3 alias
alias py="python3"

#   load terminal-notifier with reattach-to-user-namespace (necessary to work in Tmux)
alias terminal-notifier="reattach-to-user-namespace terminal-notifier"
alias termnot="reattach-to-user-namespace terminal-notifier"

# Folder alias
alias cheat="cd ~/github/cheatsheets"
alias cheatsheets="cd ~/github/cheatsheets"

# airport alias
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# University-Folder alias
alias prog1="cd ~/Documents/Universität/1.\ Semester/Programmierung\ 1"
alias prog="cd ~/Documents/Universität/2.\ Semester/Prog\ 2"
alias prog2="cd ~/Documents/Universität/2.\ Semester/Prog\ 2"
alias mfi1="cd ~/Documents/Universität/1.\ Semester/Mathematik\ für\ Informatiker\ 1"
alias mfi="cd ~/Documents/Universität/2.\ Semester/MFI\ 2"
alias mfi2="cd ~/Documents/Universität/2.\ Semester/MFI\ 2"
alias psycho="cd ~/Documents/Universität/1.\ Semester/Psychologie\ Nebenfach/Allgemeine\ Psychologie"
alias ap="cd ~/Documents/Universität/1.\ Semester/Psychologie\ Nebenfach/Allgemeine\ Psychologie"
alias np="cd ~/Documents/Universität/2.\ Semester/NP"
alias sysarch="cd ~/Documents/Universität/2.\ Semester/SysArch"

# livestream linked alias
#	Nightblue3
alias nb3="livestream nightblue3"
alias nightblue="livestream nightblue3"
alias nightblue3="livestream nightblue3"
#   Imaqtpie
alias qtpie="livestream imaqtpie"
#	RiotGames
alias riot="livestream riotgames"
alias riotgames="livestream riotgames"
#	esl_summonersinn
alias maxim="livestream SummonersInnLive"
alias suminn="livestream esl_summonersinn"
#	Sodapoppin
alias soda="livestream sodapoppin"
alias sodapoppin="livestream sodapoppin"
#	SummonersInnLive
alias gerlcs="livestream esl_summonersinn"
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
#   Sneaky
alias sneaky="livestream c9sneaky"
alias c9sneaky="livestream c9sneaky"
#	TSM_Bjergsen
alias bjerg="livestream TSM_Bjergsen"
alias bjergsen="livestream TSM_Bjergsen"
#	Zionspartan
alias zion="livestream Zionspartan"
alias zionspartan="livestream Zionspartan"
#	Kev1ntv
alias kevin="livestream kev1ntv"
#   HandofBlood
alias hob="livestream HandIOfIBlood"
alias HandofBlood="livestream HandIOfIBlood"
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
#   dotamajor
alias dotamajor="livestream dotamajor"
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

alias oct="octavepwd"

#   cheatsheets folder alias
alias cheatsheets="cd ~/github/cheatsheets"

#   mywebsite folder alias
alias mywebsite="cd ~/Documents/mywebsite"

#   rm old index.html (for new one not be named index(1).html
alias rmindex="rm ~/Downloads/index*"

#   index.html editing with macvim
alias editindex="mvim ~/Downloads/index.html"

#	default SublimeText3 project Workspace
alias std="open ~/dotfiles/SublimeText3/ProjectWorkspaces/default.sublime-project"

# own python math function
alias math="python3 ~/python/math.py"
alias isprime="python3 ~/python/isprime.py"

# python stream-checker
alias streamcheck="python3 ~/python/streamcheck.py"
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

export PATH=/usr/local/texlive/2015/bin/universal-darwin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Cellar/smlnj/110.78/bin
export MANPATH=$MANPATH:/usr/local/texlive/2015/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/usr/local/texlive/2015/texmf-dist/doc/info


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
