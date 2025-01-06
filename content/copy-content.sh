#!/bin/sh
in_dir="/mnt/d/Blinds/catalog-flipbook/book-pics/JPEG"
out_dir="/mnt/d/Ws/blinds-catalog/content/magazine"
i=1
for f in $in_dir/full_size/*.jpg; do
    dir_path="$out_dir/${i}"
    echo $f
    fn=`basename $f`
    echo $fn
    mkdir $dir_path
    cp $f $dir_path/$i.jpg
    cp $in_dir/thumbs/$fn $dir_path/thumb.jpg
    i=$((i+1))
done