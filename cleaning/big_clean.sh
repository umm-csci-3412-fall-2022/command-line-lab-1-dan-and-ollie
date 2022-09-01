#!/usr/bin/env bash

infi=$1

SCRATCH=$(mktemp --directory)

tar -zxf "$infi" --directory="$SCRATCH"
grep -r -l "DELETE ME!" "$SCRATCH" | xargs rm
home=$(pwd)

cd "$SCRATCH"
based=$(basename $infi)
tar -zcf "$home/cleaned_$based" ./*

