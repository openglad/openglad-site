#!/bin/bash

N=$1
shift

rm -f tile-*

while (( $# ))
do
	img=$1
	weight=$2
	shift
	shift

	for i in $(seq $weight)
	do
		while :
		do
			tilename=tile-$RANDOM-$img
			[ ! -e $tilename ] && break
		done
			
		echo "DOING $i"
		#convert $img -gamma .45455 -resize "32x32" -crop 32x32+0+0 +repage -gamma 2.2 $tilename
		convert $img -gamma 2 -resize "32x32" -crop 32x32+0+0 +repage $tilename
	done
done

echo "Using $(ls tile* | wc -l) tiles."

montage tile-* -geometry 32x32+0+0 -tile 20x20 $N
rm -f tile-*
