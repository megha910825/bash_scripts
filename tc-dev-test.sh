#!/bin/bash

URL="https://tc-dev-medmuc.zeiss.org"
for size in 1 10 50 150 200; do
    dd if=/dev/zero of=testfile_${size}MB bs=1M count=$size
    response=$(curl -s -o /dev/null -w "%{http_code}" -X POST -F "file=@testfile_${size}MB" $URL)
    echo "Uploading ${size}MB file: HTTP $response"
    if [ "$response" == "413" ]; then
        echo "Maximum upload size is less than ${size}MB"
        break
    fi
done
