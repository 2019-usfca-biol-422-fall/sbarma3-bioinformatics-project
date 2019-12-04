#!/bin/bash
#convert to fasta for BLAST
# you need to modify this to save the converted fasta file to a file
# instead of printing to the screen
# you'll need to turn this into a for loop too
for file in /data/illumina_sequences/trimmed/SB*.fastq
do 
	echo convert fastq to fasta file with bioawk
	bioawk -c fastx '{print ">"$name"\n"$seq}'"$file" > /data/illumina_sequences/trimmed-fasta/SB*.trim.fasta
	echo Done 
done
