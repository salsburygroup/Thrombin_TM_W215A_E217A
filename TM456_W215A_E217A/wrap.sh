#!/bin/bash

# Define a simple function that processes each input value
function process_input() {
    # Define the paths
    path2=$(pwd | sed 's#/#\n#g' | sed -n '$p')
    cd ..
    path1=$(pwd)
    # Do the calculation
    first=$((1 + 1000 * $1))
    last=$((first + 999))
    /home/wud18/.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o ${path1}/${path2}/output${1}.dcd -first $first -last $last -xtc ${path1}/${path2}/output.xtc &&
    python ~/python/WrapTrial.py -s ${path1}/input/ionized.psf -t ${path1}/${path2}/output${1}.dcd -o ${path1}/${path2}/output${1}_wrapped.dcd -sel 'protein\ and\ resid\ 1\ to\ 295'
    #python ~/python/alignTrial.py -s ${path1}/input/ionized.pdb -t ${path1}/${path2}/output${1}_wrapped.dcd -o ${path1}/${path2}/output${1}_wrapped_aligned.dcd -sel protein > align.log
    # Echo the result
#    echo "Result for input $1: $first $last $path1 $path2"
}

# Export the function for use with bash -c
export -f process_input

# Generate numbers from 0 to 99, each on a separate line, and pipe them into xargs for processing
# The -n 1 option tells xargs to use one number as an argument for each invocation of process_input
# The -P 4 option tells xargs to run up to 4 processes in parallel
printf "%s\n" {0..99} | xargs -n 1 -P 24 -I {} bash -c 'process_input "$@"' _ {}
