#!/bin/bash

for i in $(seq 1 1 100)
 do
# rm -r p$i
 cp in.run in.run$i

 #cp in.mdpd run_3.dat  test.sh ./ppp$i
 sed -i s/HHH/$i/g in.run$i

 
 #mv in.00$i.dat in.dat
 #mv in.0$i.dat in.dat
 sbatch --export=RUN_FILE=in.run$i lmp_test1.sh
 
done
