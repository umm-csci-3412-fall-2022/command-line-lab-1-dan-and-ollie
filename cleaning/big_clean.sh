#!/usr/bin/env bash

infi=$1 # File given

SCRATCH=$(mktemp --directory) # Temporary directory

tar -zxf "$infi" --directory="$SCRATCH" 	# Extract the file given to temp
grep -r -l "DELETE ME!" "$SCRATCH" | xargs rm 	# Find and delete (-r)ecursively files with the (-l)ine "DELETE ME!" 
						# From inside of scratch
home=$(pwd)					# Store current place for later
cd "$SCRATCH" || exit				# Go into scratch
baseName=$(basename "$infi")			
tar -zcf "$home/cleaned_$baseName" -- *		# (-z)ip (c)ompress (f)ile to home, chose all (-- *)

