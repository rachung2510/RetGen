:: This shell script was written by Rachel
:: Params tuned for best performance for QA

python chatbot.py ^
    --model_name_or_path models/RetGen ^
	--load_checkpoint models/retgen/generator-pretrain-step-1200.pkl ^
	--max_history -2 ^
    --top_p 0.6 ^
    --generation_length 30
