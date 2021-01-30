for envfile in ~/dotfiles/env/*.sh; do
  source ${envfile}
done

test -s "/Users/kjee/.jabba/jabba.sh" && source "/Users/kjee/.jabba/jabba.sh"