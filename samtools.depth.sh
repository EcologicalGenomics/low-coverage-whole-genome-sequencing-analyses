#!/bin/bash
#SBATCH --error=samtools.depth.error
#SBATCH --time=6:00:00 

#for i in *.bam
#do
#samtools mpileup $i | awk -v X="${2}" '$4>=X' | wc -l >> samtools.depth.breadth.txt
#done

samtools depth -a -f bam.filelist.scott+rowleysAutumn > depth_coverage.txt

