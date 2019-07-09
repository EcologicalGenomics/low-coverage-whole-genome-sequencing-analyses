#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=32000
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
########################
# -outfmt 5 XML
# to call: sbatch blastx_uniprot.sh input.fa
echo $1
$MYGROUP/software/ncbi-blast-2.7.1+/bin/blastx -db $MYGROUP/software/uniprot_sprot -query $1 -out $1.uniprot.xml.out -outfmt 5 -max_target_seqs 5 -evalue 0.001 -num_threads 12
