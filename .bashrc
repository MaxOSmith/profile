########################################
# Aliases
########################################
# General
alias run="bash run_tests.sh"
alias speed="ipython speed.py"
alias lla="ls -la"
alias hgrep="history | grep"

# SSH
alias ssh_caen="ssh mxsmith@login.engin.umich.edu"
alias ssh_485="ssh mxsmith@eecs485-02.eecs.umich.edu"

export PATH=$PATH:/home/mxsmith/anaconda/bin

##########################################
# Colors
##########################################
# Load base16 theme
bash ~/profile/themes/base16-eighties-dark.sh

# Special
COLOR_OFF='\[\e[0m\]'

# Foreground Intense
FI_YELLOW='\[\e[0;93m\]'  
FI_BLUE='\[\e[0;94m\]'

# Background

# Prompt String
PS1="${FI_YELLOW}[\t - \u]${FI_BLUE}\w${FI_YELLOW}\$${COLOR_OFF}"

