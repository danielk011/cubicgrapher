#!/usr/bin/bash
# Set the initial value of n to 1
n=1

# Loop until a non-existing "cubic-n" file is found
while test -f "history/plottingcode-$n"; do
  ((n++))
done

# Move the "latestcubicinformation" file to "cubic-n"
if test -e "latesthistory"; then
	mv "latestcubicinformation" "history/plottingcode-$n"
	mv "latesthistory" "history/cubichistory-$n"
	echo "file created"
fi
