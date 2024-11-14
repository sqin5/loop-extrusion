#!/bin/sh

# Set job parameters
#SBATCH --partition=cpuPartition
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=try
#SBATCH --error=%j.err    
#SBATCH --output=%j.out

input_file=${RUN_FILE:-in.run}

export PATH=$HOME/mpich/bin:$PATH
export LD_LIBRARY_PATH=$HOME/mpich/lib:$LD_LIBRARY_PATH

# Start LAMMPS job
#~/mpich/bin/mpirun -np 1 ~/lammps_le/src/lmp_g++_mpich -in in.run1 -sf opt -log log.lammps
#~/mpich-install/bin/mpirun -np 1 /lustre/home/jyli/lammps_le_linker_prob/src/lmp_g++_mpich -in $input_file
~/mpich/bin/mpirun -np 1 /lustre/home/jyli/lammps_le_gangti/src/lmp_g++_mpich -in $input_file

