#!/bin/sh

transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://xfersh.syssec.org:9000/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://xfersh.syssec.org/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

# macro functions
ss() {
	user=kjee
  	nm=(81 82 83)
  	for i in $nm
  		if test $i -eq  $1
  		then
   	 		user="cz-test"
  		fi

  	nm=(0 1 2)
  	for i in $nm
  		if test $i -eq  $1
  		then
   	 		user="kxj190011"
  		fi

	 echo "running ssh $user@syssec$1" 
	 ssh $user@syssec$1
}

# Improved version of 'echo' command.
ec () {
	if [[ -n $ZSH_VERSION ]]
	then
		print -r -- "$@"
	else
		echo -E -- "$@"
	fi
}
