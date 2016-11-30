#!/data/data/com.termux/files/usr/bin/bash
# Init script for my termux environment
# Termux doesn't support logins so I'm writing this more for show than for anything else

function exitTermux {
	kill -9 $PPID
	}
	
trap exitTermux INT

echo ''
echo "Quico's Android Terminal"
echo ''

# Some attempt at (weak) security
value=`cat $HOME/init/.lv426.txt | tr [:lower:] [:upper:] | tr [A-Za-z] [N-ZA-Mn-za-m] | tr '123456789' '987654321' | rev`
IFS='_' read -r -a valueArr <<< "$value"

read -p "LOGIN: " u
    case ${u^^} in
        ${valueArr[0]}* ) printf 'PASSWORD: '; read -s pass;
            if [ ${pass^^} = ${valueArr[1]} ]; then
                echo ''; printf '\nWelcome, Quico.\n\n\n'; 
break; else printf "\n** Code 403 **\n"; exitTermux; fi;;
        * ) echo "** Code 403 **"; exitTermux;;
    esac

./welcome.sh
