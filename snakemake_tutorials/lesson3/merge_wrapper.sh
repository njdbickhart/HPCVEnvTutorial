#!/bin/bash
# Resource requirements: 1 thread, ~ 5000 Mbytes of RAM

# $1 output merged bam
# $2-N input bams to merge

if [ $# -le 2 ]; then
echo -e "Usage = $0 <output merged bam> <bam1> ... <bamN>"
exit
fi

out=$1
shift

samtools merge $out "$@"
samtools index $out
