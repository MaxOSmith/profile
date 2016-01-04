#=================================================
# Functions/Etc
#=================================================
# List out ALL files and details
#
#    e.g., List all in current directory
# $lla
function lla() {
    ls -la $1
}

# History search
#
#    e.g., Search history for "bashrc"
# $hgrep bashrc
function hgrep() {
    history | grep $1
}

# Ignore duplicates in history. Options in colon seperated list
#
# Options:
#    ignorespace: ignore lines beginning with a space
#    ignoredups:  ignore lines matching previous history entry
#    ignoreboth:  ignore space and ignore dups
#    erasedups:   erase all previous lines matching current line
export HISTCONTROL=ignoreboth:erasedups

# Emacs as default editor
# export GIT_EDITOR=emacs
# export VISUAL=emacs
# export EDITOR=emacs

# Set-up git aware prompt
source ~/profile/bash/.git-prompt.sh

#=================================================
# Aliases
#=================================================
# SSH shortcuts
alias ssh_caen="ssh mxsmith@login.engin.umich.edu"
alias ssh_flux="ssh mxsmith@flux-login.arc-ts.umich.edu"
alias ssh_flux_campus="mxsmith@flux-campus-login.arc-ts.umich.edu"
alias ssh_485="ssh mxsmith@eecs485-02.eecs.umich.edu"

# Add Anaconda to path
export PATH=$PATH:/home/mxsmith/anaconda/bin

# Lazy/Typos
alias e="emacs"

alias l="ls"

alias add="git add"
alias pull="git pull"
alias push="git push"
alias commit="git commit -m"

#=================================================
# Colors
#=================================================
# Load base16 theme
BASE16_SHELL="$HOME/profile/themes/base16-eighties-dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Special
COLOR_OFF='\[\e[0m\]'

# Foreground Intense
FI_YELLOW='\[\e[0;93m\]'
FI_BLUE='\[\e[0;94m\]'

# Background

# Prompt String
PS1="${FI_YELLOW}[\t - \u]${FI_BLUE}\w${FI_YELLOW}$(__git_ps1 ' (%s)')\$${COLOR_OFF}"

# Color ls - Stolen from DJSnider
alias ls="ls --color=auto --group-directories-first"
## Blue directories
LS_COLORS="no=00:di=34;01:tw=34;01:ow=34;01"
## Everthing else white
LS_COLORS=$LS_COLORS":fi=00:ln=00:pi=00:so=00:bd=00:cd=00:or=00:mi=00:ex=00"
## Executables to be red
LS_COLORS=$LS_COLORS":*.sh=31:*.exe=31:*.bat=31"
export LS_COLORS
