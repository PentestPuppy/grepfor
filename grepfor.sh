#!/bin/bash

# Made by TRASH PUPPY
#	2024
#

# GrepFor.sh
# CLI utility for grepping a target file for a list of words

# By TrashPuppy 2024

# USE: bash ./grepfor.sh <list of terms to grep> <file to grep in>
# OR : bash ./grepfor.sh, then enter the list name and file name when prompted

echo ''
echo '            :-- GREP FOR --:'
echo ''

toGrepList=$1
target=$2

if [[ -z "$1" ]]; then
	echo ":-- Enter the to-grep list (should be a file w/ new-line separated strings): "
	read -a toGrepList
fi

if [[ -z "$2" ]]; then
	echo ":-- Enter the file to grep: "
	read -a target
fi

list=$(cat $toGrepList)
echo ""
echo ':-- Starting...'

for str in $list; do
	grepWorthit=$(grep -c $str $target)

	if [[ $grepWorthit -eq 0 ]]; then
		echo -e ":-- No results for \033[32m$str\033[0m, moving on..."
		echo ""
		continue
	else
		echo -e ":-- Grepping for \033[32m$str\033[0m"
		echo "$grepWorthit results:"
		echo ""
		grep "$str" $target --color
		echo ""
	fi

done

echo ':-- Finished'
