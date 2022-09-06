#!/usr/bin/env bash
inputNum=$1 			# take it the first argument

tar -zxf"NthPrime.tgz"		# extract/unzip the file 

cd NthPrime || exit			# go into new directory
gcc -- *.c -o NthPrime		# compile all .c files yoinked from (https://stackoverflow.com/questions/19765536/compile-all-c-files-in-a-directory-using-gcc-compiler-in-cmd)
./NthPrime "$inputNum"		# run the command NthPrime (inside the folder NthPrime; confusing, sorry)


