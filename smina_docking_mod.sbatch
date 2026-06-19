#!/bin/bash
#SBATCH --job-name=smina_array
#SBATCH --partition=ai             
#SBATCH --array=1-10
#SBATCH --cpus-per-task=16          
#SBATCH --mem=8G                   
#SBATCH --output=logs_mod/dock_%a.log

mkdir logs_mod results_mod

OUT_FILE="results_mod/docked_result_${SLURM_ARRAY_TASK_ID}.pdbqt"

smina -r protein.pdbqt -l ligand_mod_min.pdbqt \
  --center_x -0.744 --center_y 10.638 --center_z 57.860 \
  --size_x 20 --size_y 20 --size_z 20 \
  --exhaustiveness 32 \
  --cpu 16 \
  --out "$OUT_FILE"
