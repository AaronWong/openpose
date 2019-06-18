#!/bin/sh
################################################################################
# Title         : hand_from_images.sh
# Date created  : 2019/06/18
# Notes         :
__AUTHOR__="aaronwang"
################################################################################


echo 'Starting hand keypoints detection'
set -e

# get input params
input_image_dir=$1
output_image_dir=$2

# update
cd ..
git pull

# hand kp detection
cd /examples/user_code/aaron/
python3 hand_from_images.py --input_dir $input_image_dir --output_dir $output_image_dir
