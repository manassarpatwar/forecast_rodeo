#!/bin/bash
# Request 32 gigabytes of real memory (RAM)
#$ -l rmem=4G
# Request 8 cores in an SMP environment
#$ -pe smp 8
# Email notifications to me@somedomain.com
#$ -M mmsarpatwar1@sheffield.ac.uk
# Email notifications if the job aborts
#$ -m a

module load apps/python/conda

source activate forecast-rodeo

python /data/aca18mms/forecast_rodeo/src/experiments/create_data_matrices.py
