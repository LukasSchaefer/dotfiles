#\begin{enumerate}[a]
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
# alias foobar='nocorrect foobar'
alias g8='nocorrect g8'

# -------------------------------------------------------------------
# Useful Parameters
# -------------------------------------------------------------------

# enable interactive mode for mv, rm, cp (asks before overwriting)
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# open folder with 'o'
alias o="open ."

# sorts top list by cpu default
alias top="top -o cpu"

# use htop with sudo (to show ram/cpu) and also sort for cpu usage
alias htop="sudo htop --sort-key PERCENT_CPU"

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
alias tmuxstart="tmux attach -t MAIN;tmux new -s MAIN;clear;"


# -------------------------------------------------------------------
# Personal Use Shortcuts
# -------------------------------------------------------------------

# University-Folder alias
# 1. Semester
alias sem1="cd ~/Documents/Universitaet/Semester_1"
alias prog1="cd ~/Documents/Universitaet/Semester_1/Programmierung\ 1"
alias mfi1="cd ~/Documents/Universitaet/Semester_1/Mathematik\ für\ Informatiker\ 1"
alias psycho="cd ~/Documents/Universitaet/Semester_1/Psychologie\ Nebenfach/Allgemeine\ Psychologie"
alias ap="cd ~/Documents/Universitaet/Semester_1/Psychologie\ Nebenfach/Allgemeine\ Psychologie"
# 2. Semester
alias sem2="cd ~/Documents/Universitaet/Semester_2"
alias mfi2="cd ~/Documents/Universitaet/Semester_2/MFI\ 2"
alias prog2="cd ~/Documents/Universitaet/Semester_2/Prog\ 2"
alias sysarch="cd ~/Documents/Universitaet/Semester_2/SysArch"
# 3. Semester
alias sem3="cd ~/Documents/Universitaet/Semester_3"
alias sopra="cd ~/Documents/Universitaet/Semester_3/Sopra"
alias prog1t="cd ~/Documents/Universitaet/Semester_3/Prog1_Tutor"
alias mfi3="cd ~/Documents/Universitaet/Semester_3/MFI3"
alias kle="cd ~/Documents/Universitaet/Semester_3/KLE_Psychologie"
alias algodat="cd ~/Documents/Universitaet/Semester_3/Algodat"
alias ti="cd ~/Documents/Universitaet/Semester_3/TI"
# 4. Semester
alias sem4="cd ~/Documents/Universitaet/Semester_4"
alias hack="cd ~/Documents/Universitaet/Semester_4/Hacking"
alias infosys="cd ~/Documents/Universitaet/Semester_4/Infosys"
alias np="cd ~/Documents/Universitaet/Semester_4/NP"
alias ai="cd ~/Documents/Universitaet/Semester_4/AI"
alias se="cd ~/Documents/Universitaet/Semester_4/SE"
alias mipl="cd ~/Documents/Universitaet/Semester_4/MIPL"
# 5. Semester
alias sem5="cd ~/Documents/Universitaet/Semester_5"
alias ap="cd ~/Documents/Universitaet/Semester_5/Automatic_Planning"
alias planning="cd ~/Documents/Universitaet/Semester_5/Automatic_Planning"
alias irdm="cd ~/Documents/Universitaet/Semester_5/IRDM"
alias nn="cd ~/Documents/Universitaet/Semester_5/Neural_Networks"

alias vk="cd ~/Documents/Universitaet/Vorkurs_2017"
alias vorkurs="cd ~/Documents/Universitaet/Vorkurs_2017"

# sml alias for mosml with rlwrap
alias mml="rlwrap mosml"

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
