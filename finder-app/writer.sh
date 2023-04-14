#!/bin/sh

#check if all arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

$writefile="$1"
$writestr="$2"

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ "$?" -ne 0 ]; then
  echo "Error: Could not write to file '$writefile'."
  exit 1
fi

# Exit with success
exit 0
