#!/bin/bash
#SBATCH --time=2:00:00
########################
# -outfmt 5 XML
# to call: sbatch blastx_uniprot.sh input.fa
echo $1
$MYGROUP/software/ncbi-blast-2.7.1+/bin/blastx -db $MYGROUP/software/uniprot_sprot -query $1 -out $1.uniprot.out -outfmt 6 -max_target_seqs 10 -evalue 0.001 -num_threads 12
