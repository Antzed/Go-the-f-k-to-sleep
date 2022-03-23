#!/bin/bash


usage()
{
  echo "Usage: [ -h: help ] 
       [ -s: startlog ]
       [ -c: clockout ]
       [ -r: resetchoice ]"

  exit 2
}
	
while getopts "hsc:r" opt; do
	case $opt in
		h)
			usage
			;;
		s)
			bash Scripts/StartLogging.sh
			;;
		c)
			
			varreason=${OPTARG}
        		varusername=$(git config user.name)

        		varcurrenttime=$(date "+%I:%M%p")

        		currenttime=$(date +%H:%M)
          		if [[ "$currenttime" > "24:00" ]] || [[ "$currenttime" < "06:00" ]];then
                		vardate=$(date -d "yesterday" "+%Y/%m/%d %a")
                		printf "\n$vardate 次日$varcurrenttime $varreason\n" >> $varusername/"${varusername,,}"$(date "+%Y").md
          		else
				vardate=$(date "+%Y/%m/%d %a")
                		printf "\n$vardate $varcurrenttime $varreason\n" >> $varusername/"${varusername,,}"$(date "+%Y").md
			fi
			bash Scripts/committing.sh
			;;
		r)
			bash Scripts/ResetChoice.sh
			;;
		\?)
			usage
			;;
		:)
			usage
			;;

	esac
done

