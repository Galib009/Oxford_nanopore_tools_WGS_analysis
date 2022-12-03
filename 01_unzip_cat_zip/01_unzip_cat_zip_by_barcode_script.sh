#!/bin/bash

export m # used for multiple ID

# This section os for making one fastq file from zipped fastq files - 

# Go to location where the fastq pass files are :-

cd /home/galib009/Videos/fastq_pass_3rd_run_25_isolates/

mkdir fastq_cat_3rd_run

for m in {72..96..1}; do # A For_loop is written for analysing barcode 72 to 96 with one interval.
	# go to barcode folder
	cd /home/galib009/Videos/fastq_pass_3rd_run_25_isolates/barcode$m''
	# unzip all
	gunzip -d * 
	# concatenate all
	cat *.fastq > barcode$m''.fastq
	# copy concatenated file to specific folder
	cp barcode$m''.fastq /home/galib009/Videos/fastq_pass_3rd_run_25_isolates/fastq_cat_3rd_run
	# remove the concatenated file as it has been copied
	rm barcode$m''.fastq 
	# zip again
	gzip * 
	# show that it has been done
	echo completed barcode$m''
done

