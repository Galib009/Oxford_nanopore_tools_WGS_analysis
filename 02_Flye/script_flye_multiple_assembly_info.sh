#!/bin/bash
#export TMPDIR=/home/galib009/

export m # used for multiple ID

#make a folder to generate work folders by flye

for m in {02,03,04,05,06,08,09,11,14,15}; do # A For_loop is written for analysing Id 17 to 46 with one interval.
 
	#cd /home/galib009/Documents/nanopore_tools/Flye/all_fastq/

	#flye --nano-raw pamr_$m''.fastq --out-dir /home/galib009/Documents/nanopore_tools/Flye/out_pamr_first_10/out_pamr_$m'' --threads 6 --genome-size 4.2m
	
	cp /home/galib009/Documents/nanopore_tools/Flye/out_pamr_first_10/out_pamr_$m''/assembly_info.txt /home/galib009/Documents/nanopore_tools/Flye/out_pamr_first_10/out_pamr_$m''/pamr_$m''_assembly_info_flye_.txt
	
	cp /home/galib009/Documents/nanopore_tools/Flye/out_pamr_first_10/out_pamr_$m''/pamr_$m''_assembly_info_flye_.txt /home/galib009/Documents/nanopore_tools/Flye/out_pamr_first_10/assembly_all_10_pamr_fasta/assembly_info #copy scaffolds file in result folder

done
