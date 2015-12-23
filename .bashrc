# List out ALL files and details
#
#    e.g., List all in current directory
# $lla
function lla() {
    ls -la
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

# SSH shortcuts
alias ssh_caen="ssh mxsmith@login.engin.umich.edu"
alias ssh_flux="ssh mxsmith@flux-login.arc-ts.umich.edu"
alias ssh_flux_campus="mxsmith@flux-campus-login.arc-ts.umich.edu"
alias ssh_485="ssh mxsmith@eecs485-02.eecs.umich.edu"

# Add Anaconda to path
export PATH=$PATH:/home/mxsmith/anaconda/bin

##########################################
# Colors
##########################################
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
PS1="${FI_YELLOW}[\t - \u]${FI_BLUE}\w${FI_YELLOW}\$${COLOR_OFF}"

