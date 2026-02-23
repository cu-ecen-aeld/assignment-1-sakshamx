#!/bin/sh
# Finder shell script for assignment 1

#Check if the number of passed arguements are less than 2
if [ $# -ne 2 ]
then 
	echo "Error: Invalid number of arguments."
	echo "Total number of arguments should be 2, with the order, File directory path and string to be searched in the path"
	exit 1
fi
filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; 
then
  echo "$filesdir does not exist on the system."
  exit 1
fi

X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
