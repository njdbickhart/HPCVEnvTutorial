#!/bin/bash
# Resource requirements: 1 thread, ~ 5000 Mbytes of RAM

# $1 input bam file
# $2 output stats file
# $3 output image file

if [ $# -ne 3 ]; then
echo -e "Usage = $0 <input bam file> <output stats text> <output stats image>"
exit
fi

samtools stats $1 > $2
plot-bamstats -p $3 $2
