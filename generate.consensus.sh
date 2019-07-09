#!/bin/bash
#SBATCH --job-name=consensus
#SBATCH --error=consensus.error
#SBATCH --time=24:00:00 

module swap PrgEnv-cray PrgEnv-gnu
module load bcftools/1.6
module load samtools
#samtools mpileup -uf /group/director2055/aten_final_0.11.fasta RS2_2_24_HG2WFDSXX_TAAGGCGA-ACTGCATA_L001.subset.bam | bcftools call --skip-variants indels -mv -Oz -o RS2_24.vcf.gz
#$MYGROUP/software/vcftools_0.1.13/bin/vcftools --gzvcf RS2_24.vcf.gz  --remove-filtered-all  --recode --recode-INFO-all --minQ 20 --minDP 10 --stdout | $MYGROUP/software/htslib/bgzip >  RS2_24.filtered.vcf.gz
/group/director2055/lthomas/software/tabix-0.2.6/tabix RS2_24.filtered.vcf.gz
cat /group/director2055/aten_final_0.11.fasta | bcftools consensus RS2_24.filtered.vcf.gz > RS2_24_consensus.fa

#samtools mpileup -uf /group/director2055/aten_final_0.11.fasta RS2_2_45_HG2WFDSXX_GTAGAGGA-CGTCTAAT_L001.subset.bam | bcftools call --skip-variants indels -mv -Oz -o RS2_45.vcf.gz
#$MYGROUP/software/vcftools_0.1.13/bin/vcftools --gzvcf RS2_45.vcf.gz  --remove-filtered-all --recode --recode-INFO-all --minQ 20 --minDP 10 --stdout | $MYGROUP/software/htslib/bgzip >  RS2_45.filtered.vcf.gz
/group/director2055/lthomas/software/tabix-0.2.6/tabix RS2_45.filtered.vcf.gz
cat /group/director2055/aten_final_0.11.fasta | bcftools consensus RS2_45.filtered.vcf.gz > RS2_45_consensus.fa
