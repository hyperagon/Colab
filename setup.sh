#!/bin/bash
if [ ! -d "env" ]; then
    python -m venv env ; ln -s env/bin/activate sourceme
fi
if [ ! -d "cache" ]; then
    mkdir "cache"
fi
source sourceme
PIP_CACHE_DIR=cache;pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cpu
$PIP_CACHE_DIR=cache;pip3 install notebook
jupyter notebook
