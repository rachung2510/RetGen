:: model training
::CUDA_VISIBLE_DEVICES=0 
python joint_training.py ^
    --model_name_or_path configs ^
    --init_checkpoint models/arxiv_generator.pkl ^
    --train_input_file data/arxiv_train.512len.db ^
    --eval_input_file data/arxiv_test.txt ^
    --output_dir outputs/joint_arxiv ^
    --file_suffix joint_wiki ^
    --train_batch_size 1 ^
    --gradient_accumulation_steps 1 ^
    --eval_batch_size 1 ^
    --num_optim_steps 16000 ^
    --encoder_model_type ance_roberta ^
    --pretrained_model_cfg bert-base-uncased ^
    --model_file models/arxiv_retriever.pkl ^
    --ctx_file data/wiki.txt ^
    --num_shards 1000 ^
    --batch_size 8 ^
    --n_docs 2 ^
    --encoding ^
    --load_trained_model
