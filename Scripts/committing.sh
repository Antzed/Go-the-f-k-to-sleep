#!/bin/bash 
if [ -f RememberToCommit.txt ]; then
	if [ 'cat RememberToCommit.txt'=="1" ];  then
	git commit -a -m "updated sleep log"
 	git push origin master
	fi
elif [ ! -f RememberToCommit.txt ] | [ 'cat RememberToCommit.txt'=="0" ]; then
	echo want to commit and push, 1 or 0?

        read vardecision

        if [ $vardecision = 1 ]; then
		git commit -a -m "updated sleep log"
                git push origin master
        fi

	echo do you want the choice to be remembered, 1 or 0?

        read varremembered

        if [ $varremembered = 1 ]; then
                echo "$vardecision" > RememberToCommit.txt
	else	
		exit 1
	fi
	
else
	:
fi
