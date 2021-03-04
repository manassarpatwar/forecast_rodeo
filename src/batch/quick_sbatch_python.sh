#!/bin/bash
# Request 20 gigabytes of real memory (RAM)
#$ -l rmem=3G
# Request 8 cores in an OpenMP environment
#$ -pe openmp 8
# Email notifications to me@somedomain.com
#$ -M mmsarpatwar1@sheffield.ac.uk
# Email notifications if the job aborts
#$ -m a

module load apps/python/conda

source activate forecast-rodeo

python $1
