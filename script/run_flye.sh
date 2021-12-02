#!/bin/sh
#Author: Mayank Murali
#Script to run Flye metagenome assembler

flye=/datadisk1/mqm6516/Flye/bin/flye

data_ecoli=/datadisk1/mqm6516/Data/metagenome/LR/ecoli/ecoli.fastq

data_atcc=/datadisk1/mqm6516/Data/metagenome/LR/ATCC/SRR11606871_subreads.fastq.gz

data_zymo=/datadisk1/mqm6516/Data/metagenome/LR/ZymoBIOMICS/SRR13128014_subreads.fastq.gz

data_sheep=/datadisk1/mqm6516/Data/metagenome/LR/sheep/SRR10963010_subreads.fastq

data_human=/datadisk1/mqm6516/Data/metagenome/LR/human/SRR15275211_subreads.fastq.gz

data_chicken=/datadisk1/mqm6516/Data/metagenome/LR/chicken/SRR152145153_subreads.fastq.gz

threads=10

result=/datadisk1/mqm6516/Flye/human_hifi

echo "running metaFlye..."

rm -rf flye.jobs.list

/usr/bin/time -v \
  ${flye} \
  --pacbio-hifi ${data_human} \
  --threads ${threads} \
  --plasmids \
  --meta \
  --out-dir ${result} \
  >flye.out


chmod +x run_flye.sh
echo run_flye.sh >> flye.jobs.list
