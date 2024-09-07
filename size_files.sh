#!/bin/bash

razmer () {
    local path="$1"
    local size=$(du -hs "$path" 2>/dev/null | cut -f1)
    echo $size
}

times=$(ls -A)

for i in $times; do
    size=$(razmer "$i")
    echo -e "$size \t $i"
done | sort -rh -k1,1