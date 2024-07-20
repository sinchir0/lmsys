#!/bin/bash
pip install kaggle

compe_name=$1

mkdir -p ~/.kaggle/
cp data/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json

kaggle competitions download ${compe_name} -p data
unzip data/${compe_name}.zip -d data
rm data/${compe_name}.zip