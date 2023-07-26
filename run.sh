#!/bin/bash

INPUT_FILENAME=$(ls -d input/*)
OUTPUT_FILENAME=$1
REDUCTION_SIZE=$2

# Get path to this run.sh script
basedir=$( cd "$(dirname "$0")" ; pwd -P )
mkdir -p output

python ${basedir}/gdal_wrapper.py --input_file ${INPUT_FILENAME} --output_file output/${OUTPUT_FILENAME} --outsize ${REDUCTION_SIZE}
