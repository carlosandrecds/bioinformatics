#!/bin/bash
#Esse Script Foi feito por CARLOS ANDRÉ CUNHA DA SILVA - BIOLOGIA UFES
#09-05-2018

echo "Rodando Script Para Usuário:"
whoami

echo "Info de hora atual e tempo que o computador está ligado:"
uptime

system_info=`df -h` 
echo “$system_info”

#Code Start

cd TB9  

velveth TB9_41 41 -fastq -shortPaired 9_S9_L003_R1_001_trimmed_paired.fastq -fastq 9_S9_L003_R2_001_trimmed_paired.fastq -short 9_S9_L003_R1_001_trimmed_unpaired.fastq 9_S9_L003_R2_001_trimmed_unpaired.fastq
velveth TB9_49 49 -fastq -shortPaired 9_S9_L003_R1_001_trimmed_paired.fastq -fastq 9_S9_L003_R2_001_trimmed_paired.fastq -short 9_S9_L003_R1_001_trimmed_unpaired.fastq 9_S9_L003_R2_001_trimmed_unpaired.fastq
velveth TB9_55 55 -fastq -shortPaired 9_S9_L003_R1_001_trimmed_paired.fastq -fastq 9_S9_L003_R2_001_trimmed_paired.fastq -short 9_S9_L003_R1_001_trimmed_unpaired.fastq 9_S9_L003_R2_001_trimmed_unpaired.fastq 

cd .. 

mv /home/centos/Module2/TB9 /media/sf_MTBWGS_David_Allan/Results/De_Novo/Velveth
read -r -p "Press any key to continue" -n 1
mkdir /home/centos/Module2/TB10
read -r -p "Press any key to continue" -n 1
cd /media/sf_MTBWGS_David_Allan/Results/De_Novo/Velveth/TB10
read -r -p "Press any key to continue" -n 1
cp *.fastq /home/centos/Module2/TB10
read -r -p "Press any key to continue" -n 1
cd /home/centos/Module2/TB10
read -r -p "Press any key to continue" -n 1

velveth TB10_41 41 -fastq -shortPaired 10_S10_L003_R1_001_trimmed_paired.fastq -fastq 10_S10_L003_R2_001_trimmed_paired.fastq -short 10_S10_L003_R1_001_trimmed_unpaired.fastq 10_S10_L003_R2_001_trimmed_unpaired.fastq
velveth TB10_49 49 -fastq -shortPaired 10_S10_L003_R1_001_trimmed_paired.fastq -fastq 10_S10_L003_R2_001_trimmed_paired.fastq -short 10_S10_L003_R1_001_trimmed_unpaired.fastq 10_S10_L003_R2_001_trimmed_unpaired.fastq
velveth TB10_55 55 -fastq -shortPaired 10_S10_L003_R1_001_trimmed_paired.fastq -fastq 10_S10_L003_R2_001_trimmed_paired.fastq -short 10_S10_L003_R1_001_trimmed_unpaired.fastq 10_S10_L003_R2_001_trimmed_unpaired.fastq

echo "Bioinformatica é para os fortes, o resto faz PCR ;) "
