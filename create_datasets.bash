export ML_DATA="data_directory"
export PYTHONPATH=$PYTHONPATH:"."

# Download datasets
CUDA_VISIBLE_DEVICES= ./scripts/create_datasets.py

# Create unlabeled datasets. Create Cifar10 ONLY.
CUDA_VISIBLE_DEVICES= scripts/create_unlabeled.py $ML_DATA/SSL2/cifar10 $ML_DATA/cifar10-train.tfrecord &
wait

# Create semi-supervised subsets. Subset Cifar10 ONLY.
CUDA_VISIBLE_DEVICES= scripts/create_split.py --seed=0 --size=10 $ML_DATA/SSL2/cifar10 $ML_DATA/cifar10-train.tfrecord
