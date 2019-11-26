#!/bin/bash

# a script to count the number of
# sequences in a set of gzipped fastq
# files

# Shreya Barma
# October 29, 2019
# sbarma3@dons.usfca.edu

# count the number of sequences using
# zgrep
zgrep -c "^+$" /iseq/control-ng*

