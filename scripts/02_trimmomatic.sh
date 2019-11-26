#! run trimmomatic to throw out bad sequences, trim when quality gets low, or if
# sequences are too short you will need to turn this into a for loop to process
# all of your files
TrimmomaticSE -threads 4 -phred33 /data/illumina_sequences/unzipped/SB-SB_S28_L001_R1_001.fastq /data/illumina_sequences/trimmed/$(basename -s .fastq SB-SB_S28_L001_R1_001.fastq ).trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:140

