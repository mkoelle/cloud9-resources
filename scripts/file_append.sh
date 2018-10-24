#!/bin/bash 

# appends a line to the end of a file if it does not already exist
# takes two params, The line to add, and the file
# TODO: fix it so it searches for a full line match (exact)
# TODO: fix it so it can deal with spaces
function file_append {
        
    newline=$1
    file=$2
    
    grep -q -F "$newline" $file
    if [ $? -ne 0 ]; then
      echo $newline >> $file
    fi
}
