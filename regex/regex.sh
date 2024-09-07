#!/bin/bash

sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' ./r0_input.txt > ./r0_output.txt

sed -E '/I am [[:alpha:]]+\. My favorite sandwich is [[:alpha:]]+\./!d; s/\* I am ([[:alpha:]]+)\. My favorite sandwich is ([[:alpha:]]+)\./1. \1\n2. \2\n/' ./r1_input.txt > ./r1_output.txt

sed -E 's/\* sandwich with ([[:alnum:]\.]+) (for here|to go)/1. \1\n2. \2\n/' ./r2_input.txt > ./r2_output.txt
