#!/bin/bash
set -eux

JOB_ID=$(sbatch --job-name=ctest --account=epic --qos=batch --ntasks-per-node=7 --nodes=1 --time=01:00:00 ./orion_ctest.sh | awk '{print $4}')

CHECK_ID=$(sbatch --job-name=ctest --account=epic --qos=debug --ntasks-per-node=1 --nodes=1 --time=00:01:00 --dependency=afterok:$JOB_ID ./check_ctest.sh)

sleep 20m

if [ -f out.ctest ]; then
    cat out.ctest
else
    echo "ctest run fails to run."
fi
