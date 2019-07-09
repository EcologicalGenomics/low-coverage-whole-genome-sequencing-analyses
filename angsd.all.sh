#!/bin/bash
#SBATCH --job-name=angsd.all.sh
#SBATCH --error=angsd.all.error
#SBATCH --time=24:00:00 
#SBATCH --export=NONE

export OMP_NUM_THREADS=24
srun --export=all -n 1 -c 24 $MYGROUP/software/angsd/angsd -ref aten_final_0.11.fasta -anc aten_final_0.11.fasta -fold 1 -GL 1 -out genolike.all -nThreads 10 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam bam.filelist.scott+rowleysAutumn  -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 -minMaf 0.05 -baq 1 -skipTriallelic 1 -P 24/
#zcat genolike.all.beagle.gz | head -1000000 > subset.genolike.all.beagle.gz 
$MYGROUP/software/NGSadmix -likes genolike.all.beagle.gz -K 2 -o NGSadmix.rowleys+scott.autumn.out
