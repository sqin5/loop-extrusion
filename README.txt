##in-house LAMMPS for simulating coexistence of cohesive and extrusive cohesin is developed based on LAMMPS(19 Sep 2019). 

##Our version of LAMMPS is compiled with gcc/11.2.0 and mpich/4.1.1. The makefile, named Makefile_g++_mpich, is located in src/MAKE/OPTIONS. Compiling LAMMPS with 16 parallel processes takes less than one minute to finish. (Make g++_mpich -j 16). We compile our LAMMPS on Ubunutu, but any other system should work as well. Note that the makefile should be configured to use g++ as the compiler and to link against your MPI library. Depending on your specific setup, you may need to modify the makefile accordingly.


##running sample is on Github as well. We provide an example of submitting 100 tasks at once. However, since this is for reference only, we have not included 100 relaxed initial configurations but only one initial configuration. You can make a simple modification by setting the index in In.run to 1. 
 
##If you meet any problems with the LAMMPS code or running sample scripts, please contact me. `1`