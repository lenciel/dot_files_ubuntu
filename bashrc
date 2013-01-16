##############################################################################
#   Filename: .bashrc                                                        #
# Maintainer: Michael J. Smalley <michaeljsmalley@gmail.com>                 #
#        URL: http://github.com/michaeljsmalley/dotfiles                     #
#                                                                            #
#                                                                            #
# Sections:                                                                  #
#   01. General ................. General Bash behavior                      #
#   02. Aliases ................. Aliases                                    #
#   03. Theme/Colors ............ Colors, prompts, fonts, etc.               #
##############################################################################

##############################################################################
# 01. General                                                                #
##############################################################################
# Shell prompt
source ~/bin/ansicolor
#PS1="$C_BLUE[$C_RED\$?$C_BLUE][$C_RED\u@\h:\w$C_BLUE]\$ $C_RESET"
export PS1="\n\[\e[0;36m\]|-[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]-[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]-[\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]|-[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]\[\e[0;36m\]]$ \[\e[0m\]"

# If fortune is installed, run a fortune
if [ -e /opt/local/bin/fortune ]; then
    fortune -so
    echo " "
fi
##############################################################################
# 03. Theme/Colors                                                           #
##############################################################################
# CLI Colors
export CLICOLOR=1
# Set "ls" colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

export TERM="xterm-256color"

# Explicitly configured $PATH variable
export PATH=$HOME/workspace/alien_jellybean/mips-jellybean/prebuilts/misc/linux-x86/ccache/ccache:/usr/local/p4/bin:/usr/local/git/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/local/bin:/opt/local/sbin:/usr/X11/bin
export USE_CCACHE=1
export CCACHE_DIR=/home/lenciel/workspace/alien_jellybean/mips-jellybean/.ccache
# Put any proprietary or private functions/values in ~/.private, and this will source them
source ~/.private
#source ~/.profile
source ~/.aliases

vimcmd() { $1 > $2 && vim $2; }
