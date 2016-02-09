###############################################################################
# PATH
export PATH=$PATH:$HOME/bin/ 
export LLVM_BIN=$HOME/Repo/clang+llvm-3.7.0-x86_64-linux-gnu-ubuntu-14.04/bin
[ -d $LLVM_BIN ] && export PATH=$PATH:$LLVM_BIN

###############################################################################
# Ubuntu config

# Set display for remote login
[ -n "$DISPLAY" -a -f "$(where xrdb)" ] && xrdb -merge $HOME/.Xresources

# Color shortcut
export BLUE="\033[1;34m"
export GREEN="\033[1;32m"
export NO_COLOUR="\033[0m"

###############################################################################
# Local config
[ -f $HOME/.zshenv.local ] && source $HOME/.zshenv.local

