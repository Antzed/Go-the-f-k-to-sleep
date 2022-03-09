#!/bin/bash
echo What is your reason to sleep late today?

read varreason

varcurrenttime=$(date "+%I:%M%p")

currenttime=$(date +%H:%M)
   if [[ "$currenttime" > "24:00" ]] || [[ "$currenttime" < "06:00" ]]; 
   then
	   vardate=$(date -d "yesterday" "+%Y/%m/%d")
	   printf "\n$vardate 次日$varcurrenttime $varreason\n" >> Anthony/anthony2022.md
   else
	   vardate=$(date "+%Y/%m/%d")
	   printf "\n$vardate $varcurrenttime $varreason\n" >> Anthony/anthony2022.md

   fi
exit 1

