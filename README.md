## Preparation
In both folders is requirements.txt file for pip to install all required python packages. Everything was tested on python version 7.

### Install packages for training and scoring model
`pip install -r Baseline_GMM_LFCC/requirements.txt`

### Install packages for evaluating model
`pip install -r Eval/requirements.txt`

## Run
Training and scoring model is done in Baseline_GMM_LFCC folder, evaluation is done in Eval folder.

### Train model
`bash run.sh train`

### Score model
`bash run.sh score`

### Eval model
`bash run.sh eval`

### Clear all generated files
`bash run.sh clear`
