#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=32000
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12

#module load python
#module load pandas
#srun --export=all -n 1 python ./depth_coverage.py
cat depth_coverage.txt | awk '{sum+=$3} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$4} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$5} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$6} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$7} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$8} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$9} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$10} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$11} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$12} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$13} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$14} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$15} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$16} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$17} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$18} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$19} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$20} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$21} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$22} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$23} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$24} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$25} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$26} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$27} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$28} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$29} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
cat depth_coverage.txt | awk '{sum+=$30} END { print "Average = ",sum/NR}' >>depth_coverage_average.txt
