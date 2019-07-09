#!/bin/bash
#SBATCH --job-name=delly
#SBATCH --account=director2055
#SBATCH --nodes=1
#SBATCH --error=delly.error
#SBATCH --time=24:00:00
#SBATCH --export=NONE

export OMP_NUM_THREADS=24
for i in SS2_1_*.bam
do
$MYGROUP/software/delly/delly call -o $i.delly.bcf -g aten_final_0.11.fasta $i
done
