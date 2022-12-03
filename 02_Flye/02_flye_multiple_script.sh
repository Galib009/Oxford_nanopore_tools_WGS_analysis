#!/bin/bash
#export TMPDIR=/home/galib009/

export m # used for multiple ID

#make a folder to generate work folders by flye

cd /home/galib009/Videos/2nd_run

for m in {25..51..1}; do # A for loop is written for analysing multiple Id with interval.
 
	cd /home/galib009/Videos/2nd_run
# this is must to give the location of flye here ---->
	/home/galib009/Documents/nanopore_tools/03_Flye/Flye/bin/flye --nano-raw barcode$m''.fastq --out-dir /home/galib009/Documents/A_Result/fasta_flye/output_flye_barcode$m'' --threads 8 --genome-size 4.0m
	
# copy and rename assembly_info --->
	cp /home/galib009/Documents/A_Result/fasta_flye/output_flye_barcode$m''/assembly_info.txt /home/galib009/Documents/A_Result/fasta_flye/output_flye_barcode$m''/barcode_$m''_assembly_info_flye_.txt
	
	cp /home/galib009/Documents/A_Result/fasta_flye/output_flye_barcode$m''/barcode_$m''_assembly_info_flye_.txt /home/galib009/Documents/A_Result/fasta_flye/flye_assembly_info
	
# copy and rename assembly_fasta_files ---->
	cp /home/galib009/Documents/A_Result/fasta_flye/output_flye_barcode$m''/assembly.fasta /home/galib009/Documents/A_Result/fasta_flye/output_flye_barcode$m''/barcode_$m''_assembly.fasta
	
	cp /home/galib009/Documents/A_Result/fasta_flye/output_flye_barcode$m''/barcode_$m''_assembly.fasta /home/galib009/Documents/A_Result/fasta_flye
	
done
