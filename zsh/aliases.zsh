# reloading of shell
alias reload="exec $SHELL -l"

# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------

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
alias top="top -o %CPU"

# use htop with sudo (to show ram/cpu) and also sort for cpu usage
alias htop="htop --sort-key PERCENT_CPU"

# -------------------------------------------------------------------
# Folders And Files
# -------------------------------------------------------------------

alias dotfiles="cd ~/dotfiles"
alias dl="cd ~/Downloads"
alias doc="cd ~/Documents"
alias phd="cd ~/Documents/phd"

# Overall important files
alias zshrc="vim ~/dotfiles/zsh/zshrc"
alias aliases="vim ~/dotfiles/zsh/aliases.zsh"
