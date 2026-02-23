#!/bin/sh
# Writer shell script for assignment 1

#Check if the number of passed arguements are less than 2
if [ $# -ne 2 ]
then 
	echo "Error: Invalid number of arguments."
	echo "Total number of arguments should be 2, with the order, File path and string to be written in the file"
	exit 1
fi
writefile=$1
writestr=$2

# Create parent directories if they do not exist
mkdir -p "$(dirname "$writefile")" 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Error: Could not create directory path for $writefile"
    exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
  echo "Error: Could not create file on the system."
  exit 1
fi
