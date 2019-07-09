#!/bin/bash
#SBATCH --job-name=pcangsd.sh
#SBATCH --error=pcangsd.error
#SBATCH --time=2:00:00 

module load python
module load pkgconfig
module load pip
module load cython
module load numpy
module load scipy

python $MYGROUP/software/pcangsd/pcangsd.py -beagle genolike.all.beagle.gz -minMaf 0.05 -o pca.all.outfile 
