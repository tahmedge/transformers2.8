export OUTPUT_DIR_NAME=bertabsoutput
export CURRENT_DIR=${PWD}
export DATA_PATH=../dp_data/
export SUMMARIES_PATH=${CURRENT_DIR}/${OUTPUT_DIR_NAME}

# Make output directory if it doesn't exist
mkdir -p $SUMMARIES_PATH

# Add parent directory to python path to access transformer_base.py
export PYTHONPATH="../../":"${PYTHONPATH}"

python3 run_summarization.py \
    --documents_dir $DATA_PATH \
    --summaries_output_dir $SUMMARIES_PATH \
    --no_cuda false \
    --batch_size 4 \
    --min_length 50 \
    --max_length 200 \
    --beam_size 5 \
    --alpha 0.95 \
    --block_trigram true