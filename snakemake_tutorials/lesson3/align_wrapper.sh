#!/bin/bash
# Resource requirements: 4 threads, ~ 9000 Mbytes of RAM

# $1 reference genome file
# $2 Sequence data file
# $3 BAM alignment file

if [ $# -ne 3 ]; then
echo -e "Usage = $0 <input reference> <input sequence fastq> <output bamfile>"
exit
fi

minimap2 -ax map-ont $1 $2 | samtools sort -T $2.tmp -o $3 -
samtools index $3
