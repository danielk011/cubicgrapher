#!/usr/bin/bash
# Check if 'latestcubicinformation' and 'latesthistory' files exist
if [ ! -f "latestcubicinformation" ]; then
    echo "Error: 'latestcubicinformation' file not found."
    exit 1
fi

if [ ! -f "latesthistory" ]; then
    echo "Error: 'latesthistory' file not found."
    exit 1
fi

# Combine the contents of 'latestcubicinformation' and 'latesthistory'
head -n 3 "latesthistory" > "cubicgraph.sage"
cat "latestcubicinformation" > "cubicgraph.sage"

echo "Combined 'latestcubicinformation' and 'latesthistory' into 'cubicgraph.sage'"
