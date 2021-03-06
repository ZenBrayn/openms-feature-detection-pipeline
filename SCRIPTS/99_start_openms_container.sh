#!/bin/bash

# The name of the docker image to run
docker_img_name=hroest/openms-executables-2.2

# The directory path on the local system
# where the input data (mzML) are located
input_data_dir=$1

# The directory to write the results to
output_dir_name=$2

# The path to the script to execute
exe_script=$3

# The directory path on the local system
# where the pipeline processing will occur
# and output files will be written
output_data_dir=`pwd`/$output_dir_name
scripts_dir=`pwd`/SCRIPTS
ini_dir=`pwd`/INI


# Start up the docker image
docker run -it \
  -v $input_data_dir:/input_data \
  -v $output_data_dir:/$output_dir_name \
  -v $scripts_dir:/SCRIPTS \
  -v $ini_dir:/INI \
  -w /$output_dir_name \
   $docker_img_name \
   $exe_script
