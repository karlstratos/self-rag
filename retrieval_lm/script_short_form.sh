MODEL=$1
DATA_PATH=$2
MODE=$3
OUT_FILE_PATH=$4
CACHE_DIR=$5
max_new_tokens=$6
ndocs=$7
task=$8


python run_short_form.py \
  --model_name $MODEL \
  --input_file $DATA_PATH \
  --mode $MODE --max_new_tokens $max_new_tokens \
  --threshold 0.2 \
  --output_file $OUT_FILE_PATH \
  --metric match --ndocs $ndocs --use_groundness --use_utility --use_seqscore \
  --dtype half \
  --world_size 8 \
  --download_dir $CACHE_DIR \
  --task $task