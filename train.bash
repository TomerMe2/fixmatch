export ML_DATA="data_directory"
export PYTHONPATH=$PYTHONPATH:"."
CUDA_VISIBLE_DEVICES=0 python fixmatch.py --filters=32 --dataset=cifar10.0@10-1 --train_dir experiments/fixmatch
