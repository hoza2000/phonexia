#!/bin/bash

gmm_dir=Baseline_GMM_LFCC
eval_dir=Eval

if [ $# != 1 ]; then
	echo "Wrong number of arguments"
elif [ $1 == "train" ]; then
	cd $gmm_dir
	python asvspoof2021_baseline.py
elif [ $1 == "score" ]; then
	cd $gmm_dir
	python gmm_scoring_asvspoof21.py
elif [ $1 == "eval" ]; then
	cd $eval_dir
	python main.py --cm-score-file ../Baseline_GMM_LFCC/scores-lfcc-asvspoof21-LA.txt --track LA --subset eval > evals.txt
elif [ $1 == "clear" ]; then
	cd $gmm_dir
	rm __pycache__/*
	rmdir __pycache__
	rm *.pkl
	rm lfcc.h5

	cd ../$eval_dir
	rm __pycache__/*
	rmdir __pycache__
else
	echo "Argument not recognized."
fi
