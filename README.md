Script to run cycling DA using JEDI in cube sphere space, and offline Noah-MP model in vector space. 

Clara Draper, Nov, 2021.

To install and build: 

1. Fetch sub-modules.
>git submodule update --init

2. Compule sub-modules.

> cd vector2tile 
  then follow instructions in README. 
> cd .. 

> cd ufs_land_driver
  make sure executable is present. 

> cd landDA_workflow 
  then follow instructions in README.

3. Create output directories:  
> create_output_dirs.sh 

put restart in output/restarts/vector/

4. Set start and end dates in analdates.sh 

5. Set directories at top of submit_cycle.sh 

To run: 
>submit_cycle.sh