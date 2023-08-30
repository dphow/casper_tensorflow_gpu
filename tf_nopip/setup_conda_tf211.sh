#!/bin/sh
module load conda

CONDA_OVERRIDE_CUDA="11.8" mamba env create -f tf211_nopip_env.yml

conda activate tf211gpu

mkdir -p $CONDA_PREFIX/etc/conda/activate.d
mkdir -p $CONDA_PREFIX/etc/conda/deactivate.d

cp activate_env_vars.sh $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
cp deactivate_env_vars.sh $CONDA_PREFIX/etc/conda/deactivate.d/env_vars.sh

conda deactivate