#! use cut, sort, and uniq -c to help you summarize the results from the
# BLAST search.
for file in /data/illumina_sequences/blast_output/*.csv
do
	echo processing $file
	cut -d, -f1 $file | sort | uniq -c | sort -n > /data/illumina_sequences/blast_results_summarized/$(basename -s .csv $file)_summarized.csv
	echo Done
done

