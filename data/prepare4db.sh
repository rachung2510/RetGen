less train_raw.tsv| awk -F '\t' '{print "doc\t0.0 "$1"\t1.0 "$2}'> train.tsv
