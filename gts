#!/bin/bash

usage()
{
  echo "Usage: [ -h: help ] 
       [ -s: startlog ]
       [ -c: clockout ]
       [ -r: resetchoice ]"

  exit 2
}

	
while getopts "hscr" opt; do
	case $opt in
		h)
			usage
			;;
		s)
			bash Scripts/StartLogging.sh
			;;
		c)
			bash Scripts/DailyClockout.sh
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
