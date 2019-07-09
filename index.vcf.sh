#!/bin/bash

for i in *.vcf
do
$MYGROUP/software/tabix-0.2.6/tabix -p vcf $i
done
