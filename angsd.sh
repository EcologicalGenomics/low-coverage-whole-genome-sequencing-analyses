#!/bin/bash
#SBATCH --job-name=angsd.sh
#SBATCH --error=angsd.error
#SBATCH --time=24:00:00 
#SBATCH --export=NONE

#export OMP_NUM_THREADS=24
#srun --export=all -n 1 -c 24 $MYGROUP/software/angsd/angsd -bam bam.filelist.scott -ref aten_final_0.11.fasta -anc aten_final_0.11.fasta -fold 1 -out genolike.scott \
#	-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 -baq 1 -skipTriallelic 1 \
#	-minMapQ 20 -minQ 20 -minInd 10 -setMinDepth 16 -setMaxDepth 200 -SNP_pval 1e-3 \
#	-GL 1 -doMaf 1 -doMajorMinor 4 -doGlf 2 -doSaf 1 -doAbbababa 1 -doCounts 1 -P 24

#export OMP_NUM_THREADS=24
#srun --export=all -n 1 -c 24 $MYGROUP/software/angsd/angsd -bam bam.filelist.rowleys -ref aten_final_0.11.fasta -anc aten_final_0.11.fasta -fold 1 -out genolike.rowleys \
#	-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 -baq 1 -skipTriallelic 1 \
#	-minMapQ 20 -minQ 20 -minInd 10 -setMinDepth 16 -setMaxDepth 200 -SNP_pval 1e-3 \
#	-GL 1 -doMaf 1 -doMajorMinor 4 -doGlf 2 -doSaf 1 -doAbbababa 1 -doCounts 1 -P 24

export OMP_NUM_THREADS=24
srun --export=all -n 1 -c 24 $MYGROUP/software/angsd/angsd -bam bam.filelist.scott.autumn -ref aten_final_0.11.fasta -anc aten_final_0.11.fasta -fold 1 -out genolike.scott.autumn \
	-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 -baq 1 -skipTriallelic 1 \
	-minMapQ 20 -minQ 20 -minInd 8 -minMaf 0.05 -setMinDepth 16 -setMaxDepth 200 -SNP_pval 1e-3 \
	-GL 1 -doMaf 1 -doMajorMinor 4 -doGlf 2 -doSaf 1 -doAbbababa 1 -doCounts 1 -P 24

export OMP_NUM_THREADS=24
srun --export=all -n 1 -c 24 $MYGROUP/software/angsd/angsd -bam bam.filelist.scott.spring -ref aten_final_0.11.fasta -anc aten_final_0.11.fasta -fold 1 -out genolike.scott.spring \
	-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 -baq 1 -skipTriallelic 1 \
	-minMapQ 20 -minQ 20 -minInd 8 -minMaf 0.02 -setMinDepth 16 -setMaxDepth 200 -SNP_pval 1e-3 \
	-GL 1 -doMaf 1 -doMajorMinor 4 -doGlf 2 -doSaf 1 -doAbbababa 1 -doCounts 1 -P 24

export OMP_NUM_THREADS=24
srun --export=all -n 1 -c 24 $MYGROUP/software/angsd/angsd -bam bam.filelist.rowleys.autumn -ref aten_final_0.11.fasta -anc aten_final_0.11.fasta -fold 1 -out genolike.rowleys.autumn \
	-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 -baq 1 -skipTriallelic 1 \
	-minMapQ 20 -minQ 20 -minInd 8 -minMaf 0.05 -setMinDepth 16 -setMaxDepth 200 -SNP_pval 1e-3 \
	-GL 1 -doMaf 1 -doMajorMinor 4 -doGlf 2 -doSaf 1 -doAbbababa 1 -doCounts 1 -P 24

export OMP_NUM_THREADS=24
srun --export=all -n 1 -c 24 $MYGROUP/software/angsd/angsd -bam bam.filelist.rowleys.spring -ref aten_final_0.11.fasta -anc aten_final_0.11.fasta -fold 1 -out genolike.rowleys.spring \
	-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 -baq 1 -skipTriallelic 1 \
	-minMapQ 20 -minQ 20 -minInd 8 -minMaf 0.05 -setMinDepth 16 -setMaxDepth 200 -SNP_pval 1e-3 \
	-GL 1 -doMaf 1 -doMajorMinor 4 -doGlf 2 -doSaf 1 -doAbbababa 1 -doCounts 1 -P 24
