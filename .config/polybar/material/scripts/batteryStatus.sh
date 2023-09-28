#!/bin/env bash

status=$(acpi)
arr=()
for s in $status; do
    arr+=($s)
done

echo "${arr[@]}"
notify-send "Battery Time" "${arr[4]} ${arr[5]}"
