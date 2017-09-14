#!/bin/bash


#converts all tiff files into jpg files
mkdir jpegsRaw
mkdir jpegsScale
for file in *.tif;
do
	#takes the base filename minus the extension
	name=${file%.*}
	#converts the origional file to a jpg format
	convert $file $name.jpg
	if [[ "$name" == "Exp"* ]]; then
		mv $name.jpg jpegsScale/$name.jpg
	else
		mv $name.jpg jpegsRaw/$name.jpg
	fi
done