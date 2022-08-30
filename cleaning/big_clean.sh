#!/usr/bin/env bash

infi=$1

SCRATCH=$(mktemp --directory)

tar -zxf "$infi" --directory="$SCRATCH"



