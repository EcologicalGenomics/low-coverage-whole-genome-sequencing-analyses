#!/bin/bash
#SBATCH --account=pawsey0159
#SBATCH --job-name=angsd.pbs
#SBATCH --error=angsd.pbs.error
#SBATCH --time=12:00:00 

#calculate 2dsfs
$MYGROUP/software/angsd/misc/realSFS genolike.rowleys.autumn.saf.idx genolike.rowleys.spring.saf.idx > RA.RS.ml
$MYGROUP/software/angsd/misc/realSFS genolike.rowleys.autumn.saf.idx genolike.scott.autumn.saf.idx > RA.SA.ml
$MYGROUP/software/angsd/misc/realSFS genolike.rowleys.spring.saf.idx genolike.scott.autumn.saf.idx > RS.SA.ml
$MYGROUP/software/angsd/misc/realSFS genolike.scott.autumn.saf.idx genolike.scott.spring.saf.idx > SA.SS.ml
$MYGROUP/software/angsd/misc/realSFS genolike.scott.autumn.saf.idx genolike.rowleys.autumn.saf.idx > SA.RA.ml
$MYGROUP/software/angsd/misc/realSFS genolike.scott.spring.saf.idx genolike.rowleys.autumn.saf.idx > SS.RA.ml

$MYGROUP/software/angsd/misc/realSFS fst index genolike.rowleys.autumn.saf.idx genolike.rowleys.spring.saf.idx genolike.scott.autumn.saf.idx -sfs RA.RS.ml -sfs RA.SA.ml -sfs RS.SA.ml -fstout pbs.rowleys.all
$MYGROUP/software/angsd/misc/realSFS fst index genolike.scott.autumn.saf.idx genolike.scott.spring.saf.idx genolike.rowleys.autumn.saf.idx -sfs SA.SS.ml -sfs SA.RA.ml -sfs SS.RA.ml -fstout pbs.scott.all

$MYGROUP/software/angsd/misc/realSFS fst stats pbs.rowleys.all.fst.idx
$MYGROUP/software/angsd/misc/realSFS fst stats pbs.scott.all.fst.idx

$MYGROUP/software/angsd/misc/realSFS fst stats2 pbs.rowleys.all.fst.idx -win 200000 -step 10000 > slidingwindow.pbs.rowleys.txt
$MYGROUP/software/angsd/misc/realSFS fst stats2 pbs.scott.all.fst.idx -win 200000 -step 10000 > slidingwindow.pbs.scott.txt
