#!/bin/bash

#A script to unzip and run fastqc on a folder of fastq.gz
# Illumina sequence files

#Shreya Barma
# October 30,2019
# sbarma3@dons.usfca.edu

# move the files to the unzipped directory
echo copying files...
cp -vr /data/illumina_sequences/raw/*.gz /data/illumina_sequences

#unzip the files
echo unzipping files...
gunzip /data/illumina_sequences/unzipped/*

#run fastqc and put output into output folder
echo running fastqc
fastqc /data/illumina_sequences/unzipped/*  --outdir=output/fastqc-results

