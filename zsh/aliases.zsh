# reloading of shell
alias reload="exec $SHELL -l"

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

# use htop and sort for cpu usage
alias htop="htop --sort-key PERCENT_CPU"

# start macvim
alias mvim="/Applications/MacVim.app/Contents/bin/mvim"

# restart chunkwm
alias chunkrestart="brew services restart skhd; brew services restart chunkwm"
alias chunkstart="brew services start skhd; brew services start chunkwm"
alias chunkstop="brew services stop chunkwm; brew services stop skhd"

# -------------------------------------------------------------------
# Folders And Files
# -------------------------------------------------------------------

# Overall important folders
alias cheat="cd ~/cheatsheets"
alias cheatsheets="cd ~/cheatsheets"
alias cl="cd; clear"
alias c="clear"
alias dotfiles="cd ~/dotfiles"
alias dt="cd ~/dotfiles"
alias scripts="cd ~/dotfiles/scripts"
alias dl="cd ~/Downloads"
alias desk="cd ~/Desktop"
alias db="cd ~/Dropbox"
alias dropbox="cd ~/Dropbox"
alias doc="cd ~/Documents"
alias wallpaper="cd ~/Pictures/Wallpapers"
alias ws="cd ~/Developer/mywebsite/"
alias website="cd ~/Developer/mywebsite/"
alias cv="cd /Users/Lukas/Documents/Urkunden/CV/CV_repo"

# Overall important files
alias zshrc="mvim ~/dotfiles/zsh/zshrc"
alias aliases="mvim ~/dotfiles/zsh/aliases.zsh"
alias vimrc="vim ~/dotfiles/mvim/vimrc"
alias tmuxconf="mvim ~/dotfiles/tmux/tmux.conf"
alias tmuxstart="tmux attach -t MAIN;tmux new -s MAIN;clear;"


# -------------------------------------------------------------------
# Personal Use Shortcuts
# -------------------------------------------------------------------

#DAAD Scholarship folder alias
alias daad="cd /Users/Lukas/Documents/Universitaet/Stipendien/DAAD"
#
# University-Folder alias
# -------------------------------------------------------------------
# Undergradutes/ Bachelor - Saarland University
alias bsc="cd /Users/Lukas/Documents/Universitaet/Bachelor"
alias bachelor="cd /Users/Lukas/Documents/Universitaet/Bachelor"
#
# 1. Semester
alias prog1="cd ~/Documents/Universitaet/Bachelor/Semester_1/Programmierung\ 1"
alias mfi1="cd ~/Documents/Universitaet/Bachelor/Semester_1/Mathematik\ für\ Informatiker\ 1"
alias psycho="cd ~/Documents/Universitaet/Bachelor/Semester_1/Psychologie\ Nebenfach/Allgemeine\ Psychologie"
# 2. Semester
alias mfi2="cd ~/Documents/Universitaet/Bachelor/Semester_2/MFI\ 2"
alias prog2="cd ~/Documents/Universitaet/Bachelor/Semester_2/Prog\ 2"
alias sysarch="cd ~/Documents/Universitaet/Bachelor/Semester_2/SysArch"
# 3. Semester
alias sopra="cd ~/Documents/Universitaet/Bachelor/Semester_3/Sopra"
alias prog1t="cd ~/Documents/Universitaet/Bachelor/Semester_3/Prog1_Tutor"
alias mfi3="cd ~/Documents/Universitaet/Bachelor/Semester_3/MFI3"
alias kle="cd ~/Documents/Universitaet/Bachelor/Semester_3/KLE_Psychologie"
alias algodat="cd ~/Documents/Universitaet/Bachelor/Semester_3/Algodat"
alias ti="cd ~/Documents/Universitaet/Bachelor/Semester_3/TI"
# 4. Semester
alias hack="cd ~/Documents/Universitaet/Bachelor/Semester_4/Hacking"
alias infosys="cd ~/Documents/Universitaet/Bachelor/Semester_4/Infosys"
alias np="cd ~/Documents/Universitaet/Bachelor/Semester_4/NP"
alias ai="cd ~/Documents/Universitaet/Bachelor/Semester_4/AI"
alias se="cd ~/Documents/Universitaet/Bachelor/Semester_4/SE"
alias mipl="cd ~/Documents/Universitaet/Bachelor/Semester_4/MIPL"
# 5. Semester
alias ap="cd ~/Documents/Universitaet/Bachelor/Semester_5/Automatic_Planning"
alias planning="cd ~/Documents/Universitaet/Bachelor/Semester_5/Automatic_Planning"
alias irdm="cd ~/Documents/Universitaet/Bachelor/Semester_5/IRDM"
alias nn="cd ~/Documents/Universitaet/Bachelor/Semester_5/Neural_Networks"
# 6. Semester
alias ase="cd ~/Documents/Universitaet/Bachelor/Semester_6/ASE"
alias bscthesis="cd ~/Documents/Universitaet/Bachelor/Semester_6/Bachelor_Arbeit"

alias vk="cd ~/Documents/Universitaet/Vorkurs/Vorkurs_2017"
alias vorkurs="cd ~/Documents/Universitaet/Vorkurs/Vorkurs_2017"

# sml alias for mosml with rlwrap
alias mml="rlwrap mosml"

# -------------------------------------------------------------------
# Postgraduates/ Masters - University of Edinburgh
alias msc="cd /Users/Lukas/Documents/Universitaet/Master"
alias master="cd /Users/Lukas/Documents/Universitaet/Master"
#
alias uoe="cd /Users/Lukas/Documents/Universitaet/Master/UoE"
# 1. Semester
alias sem1="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1"
alias mlpr="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1/MLPR"
alias rss="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1/RSS"
alias iqc="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1/IQC"
alias stn="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1/STN"
alias nat="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1/NAT_DL"
alias natdl="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1/NAT_DL"
alias nc="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1/NAT_DL"
alias irr="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_1/IRR"
# 2. Semester
alias sem2="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_2"
alias agta="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_2/AGTA"
alias gt="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_2/AGTA"
alias dmr="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_2/DMR"
alias ipp="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_2/IPP"
alias pmr="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_2/PMR"
alias rl="cd /Users/Lukas/Documents/Universitaet/Master/UoE/Semester_2/RL"
# Dissertation
alias thesis="cd /Users/Lukas/Documents/Universitaet/Master/UoE/dissertation"
alias mscthesis="cd /Users/Lukas/Documents/Universitaet/Master/UoE/dissertation"
alias diss="cd /Users/Lukas/Documents/Universitaet/Master/UoE/dissertation"

# societies
alias hyped="cd /Users/Lukas/Documents/Universitaet/Master/UoE/others/societies/HYPED"

# ------------------------------------------------------------------
# PhD applications/ studies
alias phd="cd /Users/Lukas/Documents/Universitaet/PhD"

# scientific papers library
alias papers="cd /Users/Lukas/Documents/Universitaet/papers"

# -------------------------------------------------------------------

# speedtest
alias speedtest="zsh ~/dotfiles/scripts/others/speedtest.sh"

# downlaod client https://github.com/deepjyoti30/downloader-cli
alias dw="python3 ~/dotfiles/scripts/others/downloader-cli/download.py"
alias download="python3 ~/dotfiles/scripts/others/downloader-cli/download.py"

alias pdfcompress="compresspdf"

# matrix
alias matrix="bash ~/dotfiles/scripts/others/matrix.sh"

# twitch streams related scripts
alias stream="selectstreams"
alias streamcheck="python3 ~/dotfiles/scripts/python_script/streamcheck.py"

# alias for applications
alias vlc="open -a vlc"
alias vox="open -a vox"

# -------------------------------------------------------------------
# livestream linked alias (*DISCLAIMER: Might be too long*)
# -------------------------------------------------------------------
# livestream linked alias
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
#	Meteos
alias meteos="livestream Meteos"
#   Sneaky
alias sneaky="livestream c9sneaky"
alias c9sneaky="livestream c9sneaky"
#	Kev1ntv
alias kevin="livestream kev1ntv"
#   HandofBlood
alias hob="livestream HandIOfIBlood"
alias HandofBlood="livestream HandIOfIBlood"
#	dota2ti
alias dota2ti="livestream dota2ti"
#	dota2ti_noob
alias dota2newcomer="livestream dota2ti_newcomer"
alias dota2tinewcomer="livestream dota2ti_newcomer"
alias dota2ti_newcomer="livestream dota2ti_newcomer"
#   dotamajor
alias dotamajor="livestream dotamajor"
#	GamesDoneQuick
alias gdq="livestream GamesDoneQuick"
alias gamesdonequick="livestream GamesDoneQuick"
