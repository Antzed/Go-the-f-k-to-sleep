#!/bin/bash
echo What is your reason to sleep late today?

read varreason

varusername=$(git config user.name)

varcurrenttime=$(date "+%I:%M%p")

currenttime=$(date +%H:%M)
   if [[ "$currenttime" > "24:00" ]] || [[ "$currenttime" < "06:00" ]];
   then
           vardate=$(date -d "yesterday" "+%Y/%m/%d %a")
	   printf "\n$vardate 次日$varcurrenttime $varreason\n" >> $varusername/"${varusername,,}"$(date "+%Y").md
   else
           vardate=$(date "+%Y/%m/%d %a")
	   printf "\n$vardate $varcurrenttime $varreason\n" >> $varusername/"${varusername,,}"$(date "+%Y").md

   fi
 
bash Scripts/committing.sh
