less arxiv_train_raw.tsv| awk -F '\t' '{print "0.0 "$1"\t1.0 "$2"\t2.0 "$3}'> arxiv_train.tsv
