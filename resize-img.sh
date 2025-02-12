#!/usr/bin/env bash

set -x

pathDenahLt1="./public/img/KostJC-Lt1"
pathDenahLt2="./public/img/KostJC-Lt2"

# Resize gambar denah untuk Lantai 1
for img in ${pathDenahLt1}/*.png; do
  filename=$(basename "$img" .png)
  convert $img -resize 160x160 ${pathDenahLt1}/${filename}-160x160.png
done

# Resize gambar denah untuk Lantai 2
for img in ${pathDenahLt2}/*.png; do
  filename=$(basename "$img" .png)
  convert $img -resize 160x160 ${pathDenahLt2}/${filename}-160x160.png
done