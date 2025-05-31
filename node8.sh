#!/bin/bash
export NCCL_SOCKET_IFNAME=en
export NCCL_P2P_DISABLE=0
#export NCCL_NET='Socket'
export NCCL_NET='IB'
export NCCL_IB_DISABLE=0
export NCCL_IB_HCA=mlx5_1

python deepy.py train.py ./configs/node8.yml
