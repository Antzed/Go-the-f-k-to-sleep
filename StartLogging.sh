#!/bin/bash

varusername=$(git config user.name)

varlogname="${varusername,,}"$(date "+%Y").md

if [ -d "$varusername" ];
then
	echo directory already exist!
else
	echo Creating directory for you!
	mkdir $varusername
fi


if [ -f "$varusername/$varlogname" ];
then
	echo file already exists!
else
	echo Creating file for this year!
	touch $varusername/$varlogname
fi
