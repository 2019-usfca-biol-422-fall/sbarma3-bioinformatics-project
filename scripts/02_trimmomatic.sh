#!/bin/bash
# run trimmomatic to throw out bad sequences, trim when quality gets low, or if
# sequences are too short you will need to turn this into a for loop to process
# all of your files

for file in /data/illumina_sequences/unzipped/SB*.fastq 
do
	echo running trimmomatic on "$file"
	TrimmomaticSE -threads 4 -phred33 "$file" /data/illumina_sequences/trimmed/"$(basename -s .fastq "$file")".trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:140
	echo Done
done 
