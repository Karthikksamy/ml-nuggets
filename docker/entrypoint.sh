#!/bin/bash --login
set -e
echo "ENTRYPOINT: Activating conda environment" $ENV_PREFIX
conda activate $ENV_PREFIX 
exec "$@"
/bin/bash