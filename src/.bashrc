# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -z "$ZSH_NAME" ] && [ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"

# @begin(90651256)@ - Do not edit these lines - added automatically!
# You should customize CIAOPATH before this chunk if you place bundles in
# places other than ~/.ciao
if [ -x /Users/kunmukh/.ciaoroot/master/build/bin/ciao-env ] ; then
  eval "$(/Users/kunmukh/.ciaoroot/master/build/bin/ciao-env --sh)"
fi
# @end(90651256)@ - End of automatically added lines.
PATH=$PATH:~/.ciaoroot/master/build/bin/ 

alias poweroff="loginctl poweroff"
alias reboot="loginctl reboot"
alias lh="ls -trlh"
alias ll="ls -alF"
alias hd="hexdump -C"
alias df="df -h --total"
alias objdump_intel="objdump --visualize-jumps=extended-color -M intel -d"
alias dmesg="dmesg -Hx -f kern,user,daemon,syslog"
alias kdmesg="dmesg -Hx -f kern -l debug,info,notice,warn,err,crit,alert,emerg"
alias objdump_arm="armv6j-hardfloat-linux-gnueabi-objdump --visualize-jumps=extended-color -d"

