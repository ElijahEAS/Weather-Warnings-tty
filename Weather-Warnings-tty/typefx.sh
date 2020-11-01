#!/usr/bin/env bash

typefx() {
    delay=$1
    string=$2

    for char in $(seq 0 $(expr length "${string}")); do
        echo -n "${string:$char:1}"
        sleep $delay
    done
    echo
}

TEXT=$(<data1.txt)
typefx 0.10 "$TEXT"

