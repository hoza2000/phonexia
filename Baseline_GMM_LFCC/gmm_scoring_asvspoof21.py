from gmm import scoring
import os

# scores file to write
scores_file = 'scores-lfcc-asvspoof21-LA.txt'

# configs
features = 'lfcc'
dict_file = 'gmm_lfcc_asvspoof21_la.pkl'

db_folder = os.getcwd() + "/data/eval/"
eval_folder = db_folder + 'flac/'
eval_ndx = db_folder + 'ASVspoof2021.LA.cm.eval.trl.txt'

audio_ext = '.flac'

# run on ASVspoof 2021 evaluation set
scoring(scores_file=scores_file, dict_file=dict_file, features=features,
        eval_ndx=eval_ndx, eval_folder=eval_folder, audio_ext=audio_ext,
        features_cached=True)
