#!/bin/bash

#SBATCH --job-name=NGSadmix.sh
#SBATCH --error=NGSadmix.error
#SBATCH --time=02:00:00 

$MYGROUP/software/NGSadmix -likes subset.genolike.all.beagle.gz -K 3 -o NGSadmix.all.k3.out
