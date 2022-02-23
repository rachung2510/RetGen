# This shell script was modified by Rachel
# num_shards increased to 100 to decrease training time
# batch_size decreased to 8 to decrease RAM usage

# model training
CUDA_VISIBLE_DEVICES=0 python joint_training.py \
    --model_name_or_path configs\
    --init_checkpoint "/content/drive/My Drive/Colab Notebooks/RetGen/models/reddit_generator.pkl" \
    --train_input_file "/content/drive/My Drive/Colab Notebooks/RetGen/data/arxiv_train.512len.db" \
    --eval_input_file data/arxiv_test.txt \
    --output_dir "/content/drive/My Drive/Colab Notebooks/RetGen/outputs/joint" \
    --file_suffix joint \
    --train_batch_size 1 \
    --gradient_accumulation_steps 1 \
    --eval_batch_size 1 \
    --num_optim_steps 16000 \
    --encoder_model_type ance_roberta \
    --pretrained_model_cfg bert-base-uncased \
    --model_file "/content/drive/My Drive/Colab Notebooks/RetGen/models/reddit_retriever.pkl" \
    --ctx_file "/content/drive/My Drive/Colab Notebooks/RetGen/data/wiki.txt" \
    --num_shards 100 \
    --batch_size 8 \
    --n_docs 2 \
    --encoding \
    --load_trained_model      
