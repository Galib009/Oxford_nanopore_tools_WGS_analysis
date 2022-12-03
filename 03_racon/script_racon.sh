# install - 

#Can be found here ---  https://github.com/isovic/racon


#usage 

bwa index pamr_02_assembly_flye_.fasta
bwa mem -t 4 -x ont2d pamr_02_assembly_flye_.fasta pamr_02.fastq > pamr_02_mapping.sam

# need to give the location of racoon --
./racon -q 7 -m 8 -x -6 -g -8 -w 500 -t 4 pamr_02.fastq pamr_02_mapping.sam pamr_02_assembly_flye_.fasta > pamr_02_racon.fasta
