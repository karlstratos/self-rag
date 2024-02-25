#!/bin/bash
model=$1
ndocs=$2
max_new_tokens=$3
task=$4
input_file=$5
output_file=$6
mode=$7
cache_dir=$8

# model= selfrag/selfrag_llama2_7b
# ndocs=5
# max_new_tokens=300
#task=[asqa, factscore]
# mode= [always_retrieve, adaptive_retrieval]


python run_long_form_static.py \
  --model_name $model \
  --ndocs $ndocs --max_new_tokens $max_new_tokens --threshold 0.2 \
  --use_grounding --use_utility --use_seqscore \
  --task $task --input_file $input_file \
  --output_file $output_file --max_depth 7 --mode $mode \
  --download_dir $cache_dir \
  --world_size 8