#!/bin/bash

$MYGROUP/software/bedtools2-2.27.1/bin/bedtools getfasta -fi RS2_24_consensus.fa -bed atenuis.genes.gff -fo RS2_24_consensus.genes.fa
$MYGROUP/software/bedtools2-2.27.1/bin/bedtools getfasta -fi RS2_45_consensus.fa -bed atenuis.genes.gff -fo RS2_45_consensus.genes.fa
