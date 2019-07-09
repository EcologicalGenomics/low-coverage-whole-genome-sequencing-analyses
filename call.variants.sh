#!/bin/bash
#SBATCH --job-name=bcftools.variants
#SBATCH --error=call.variants.error
#SBATCH --time=24:00:00 

module swap PrgEnv-cray PrgEnv-gnu
module load bcftools/1.6
module load samtools
samtools faidx /group/director2055/aten_final_0.11.fasta

for i in *.bam
do
bcftools mpileup -Ou -f /group/director2055/aten_final_0.11.fasta $i | bcftools call --skip-variants indels -mv -Ov -o $i.vcf
done
