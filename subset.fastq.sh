#!/bin/bash
#SBATCH --job-name=subset.fastq.gz
#SBATCH --account=director2055
#SBATCH --nodes=1
#SBATCH --error=subset.fastq.error
#SBATCH --time=24:00:00

for fq in *.fastq.gz
do
zcat $fq | head -400000000 > $fq.subset.fastq
gzip $fq.subset.fastq
done
