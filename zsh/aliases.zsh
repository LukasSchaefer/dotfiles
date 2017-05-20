#\begin{enumerate}[a]
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
# alias foobar='nocorrect foobar'
alias g8='nocorrect g8'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'bk=cd $OLDPWD'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls --color=auto -d .*' # show hidden files/directories only
alias lsd='ls --color=auto -aFhlG'
alias l='ls --color=auto -al'
alias ls='ls --color=auto -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls --color=auto -GFhl' # Same as above, but in long listing format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size

alias 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias 'filecount=find . -type f | wc -l' # number of files (not directories)

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
alias ql='qlmanage -p 2>/dev/null' # OS X Quick Look
alias oo='open .' # open current directory in OS X Finder
alias 'smart=diskutil info disk0 | grep SMART' # display SMART status of hard drive
# Hall of the Mountain King
alias cello='say -v cellos "di di di di di di di di di di di di di di di di di di di di di di di di di di"'
# alias to show all Mac App store apps
alias apps='mdfind "kMDItemAppStoreHasReceipt=1"'
# rebuild Launch Services to remove duplicate entries on Open With menu
alias rebuildopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.fram ework/Support/lsregister -kill -r -domain local -domain system -domain user'
fi

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -v'
alias gclean='git clean -fd'
alias gco='git checkout'
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gcount='git shortlog -sn'
alias gd='git diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gl='git pull'
alias glg='git log --stat --graph'
alias glog='git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --graph'
alias gm='git merge'
alias gmom='git merge origin/master'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash'

alias gp='git push'

alias gcl='git clone'
alias gta='git tag -a -m'

# curiosities 
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"


# -------------------------------------------------------------------
# Useful Parameters
# -------------------------------------------------------------------

# enable interactive mode for mv, rm, cp (asks before overwriting)
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# launch apps with 'app'
alias app="open -a"
alias a="open -a"
alias Battle.net="Battle.net.app"

# open folder with 'o'
alias o="open ."

# sorts top list by cpu default
alias top="top -o cpu"

# archey is default colored
alias archey="archey -c"

# added alias 'filetree' which lists the filesystem graphically
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'" 
#
# use htop with sudo (to show ram/cpu) and also sort for cpu usage
alias htop="sudo htop --sort-key PERCENT_CPU"

# alias to cat this file to display
alias acat='< ~/dotfiles/zsh/aliases.zsh'
alias fcat='< ~/scripts/functions.zsh'
alias sz='source ~/.zshrc'

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# colortest_etc launch
alias colortest="zsh ~/scripts/others/colortest/colors_esc"

# -------------------------------------------------------------------
# Folders And Files
# -------------------------------------------------------------------

# Overall important folders
alias cheat="cd ~/github/cheatsheets"
alias cheatsheets="cd ~/github/cheatsheets"
alias cl="cd; clear"
alias c="clear"
alias dotfiles="~/dotfiles"
alias dt="~/dotfiles"
alias scripts="~/scripts"
alias dl="~/Downloads"
alias desk="~/Desktop"
alias db="~/Dropbox"
alias dropbox="~/Dropbox"
alias doc="~/Documents"
alias wallpaper="~/Pictures/Wallpapers"

# Overall important files
alias zshrc="mvim ~/dotfiles/zsh/zshrc"
alias aliases="mvim ~/dotfiles/zsh/aliases.zsh"
alias vimrc="vim ~/dotfiles/mvim/vimrc"
alias tmuxconf="mvim ~/dotfiles/tmux/tmux.conf"


# -------------------------------------------------------------------
# Personal Use Shortcuts
# -------------------------------------------------------------------

# University-Folder alias
# 1. Semester
alias sem1="cd ~/Documents/Universität/1.Semester"
alias prog1="cd ~/Documents/Universität/1.Semester/Programmierung\ 1"
alias mfi1="cd ~/Documents/Universität/1.Semester/Mathematik\ für\ Informatiker\ 1"
alias psycho="cd ~/Documents/Universität/1.Semester/Psychologie\ Nebenfach/Allgemeine\ Psychologie"
alias ap="cd ~/Documents/Universität/1.Semester/Psychologie\ Nebenfach/Allgemeine\ Psychologie"
# 2. Semester
alias sem2="cd ~/Documents/Universität/2.Semester"
alias mfi2="cd ~/Documents/Universität/2.Semester/MFI\ 2"
alias prog2="cd ~/Documents/Universität/2.Semester/Prog\ 2"
alias sysarch="cd ~/Documents/Universität/2.Semester/SysArch"
# 3. Semester
alias sem3="cd ~/Documents/Universität/3.Semester"
alias sopra="cd ~/Documents/Universität/3.Semester/Sopra"
alias prog1t="cd ~/Documents/Universität/3.Semester/Prog1_Tutor"
alias mfi3="cd ~/Documents/Universität/3.Semester/MFI3"
alias kle="cd ~/Documents/Universität/3.Semester/KLE_Psychologie"
alias algodat="cd ~/Documents/Universität/3.Semester/Algodat"
alias ti="cd ~/Documents/Universität/3.Semester/TI"
# 4. Semester
alias sem4="cd ~/Documents/Universität/4.Semester"
alias hack="cd ~/Documents/Universität/4.Semester/Hacking"
alias infosys="cd ~/Documents/Universität/4.Semester/Infosys"
alias np="cd ~/Documents/Universität/4.Semester/NP"
alias ai="cd ~/Documents/Universität/4.Semester/AI"
alias se="cd ~/Documents/Universität/4.Semester/SE"
alias mipl="cd ~/Documents/Universität/4.Semester/MIPL"

alias vorkurs="cd ~/Documents/Universität/Vorkurs_2017"

# sml alias for mosml with rlwrap
alias mml="rlwrap mosml"

# own python math function
alias math="python3 ~/scripts/python_scripts/math_scripts/math_script.py"

# speedtest
alias speedtest="zsh ~/scripts/others/speedtest.sh"

# twitch streams related scripts
alias stream="selectstreams"
alias streamcheck="python3 ~/scripts/python_script/streamcheck.py"

# alias for applications
alias vlc="open -a vlc"
alias vox="open -a vox"

# -------------------------------------------------------------------
# livestream linked alias (*DISCLAIMER: Might be too long*)
# -------------------------------------------------------------------
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
#   EULCS
alias eulcs="livestream EULCS1"
alias eulcs1="livestream EULCS1"
alias eulcs2="livestream EULCS2"
#   NALCS
alias nalcs="livestream NALCS1"
alias nalcs1="livestream NALCS1"
alias nalcs2="livestream NALCS2"
#   LCK
alias lck="livestream LCK1"
alias lck1="livestream LCK1"
#	esl_summonersinn
alias maxim="livestream SummonersInnLive"
alias suminn1="livestream SummonersInnLive1"
alias suminn2="livestream SummonersInnLive2"
alias suminn="livestream esl_summonersinn"
#   Asmongold
alias asmon="livestream asmongold"
alias asmongold="livestream asmongold"
#	Sodapoppin
alias soda="livestream sodapoppin"
alias sodapoppin="livestream sodapoppin"
#   Warcraft
alias warcraft="livestream warcraft"
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
