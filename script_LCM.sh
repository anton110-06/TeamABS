#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Erreur"
	exit 1
fi

gcd() {
	local x=$1
	local y=$2
	while [ "$y" -ne 0 ];  do
		local temp=$y
		y=$((x % y))
		x=$temp
	done
	echo "$x"

lcm=$(( ($1 * $2) / $(gcd "$1" "$2") ))
echo "$lcm"
