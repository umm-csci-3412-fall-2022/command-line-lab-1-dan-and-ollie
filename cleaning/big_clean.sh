#!/usr/bin/env bash

infi=$1

SCRATCH=$(mktemp --directory)

tar -zxf "$infi" --directory="$SCRATCH"
grep -r -l "DELETE ME!" "$SCRATCH" | xargs rm
home=$(pwd)

cd "$SCRATCH"

tar -zcf "$home/cleaned_little_dir" ./*

