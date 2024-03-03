#!/usr/bin/env bash

# arg=$1;
arg=$1;
def=6500;

cmd_ret=$(busctl --user -- get-property rs.wl-gammarelay / rs.wl.gammarelay Temperature);

digit=$(echo "$cmd_ret" | awk '{ print $2}')

if [[ "$digit" = "$arg" ]]; then
    busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q $def
else
    busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q "$arg"
fi
