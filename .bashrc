alias run="bash run_tests.sh"
alias speed="ipython speed.py"

export PATH=$PATH:/home/mxsmith/anaconda/bin

##########################################
# Colors
##########################################
# Special
COLOR_OFF='\e[0m'

# Foreground Intense
FI_YELLOW='\[\e[0;93m\]'  
FI_BLUE='\[\e[0;94m\]'

# Background

PS1="${FI_YELLOW}[\t - \u]${FI_BLUE}\w${FI_YELLOW}\$${COLOR_OFF}"
