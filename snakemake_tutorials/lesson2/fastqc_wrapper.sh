#!/bin/bash

# $1 fastq file

if [ $# -ne 1 ]; then
echo -e "Usage = $0 <input fastq>"
exit
fi

fastqc $1