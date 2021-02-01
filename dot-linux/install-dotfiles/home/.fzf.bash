# Setup fzf
# ---------
if [[ ! "$PATH" == */home/kunmukh/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/kunmukh/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/kunmukh/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/kunmukh/.fzf/shell/key-bindings.bash"
