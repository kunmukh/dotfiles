# Setup fzf
# ---------
if [[ ! "$PATH" == */home/syssec0/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/syssec0/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/syssec0/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/syssec0/.fzf/shell/key-bindings.zsh"
