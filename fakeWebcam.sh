#!/bin/bash

#Example/Ejemplo: 
#./fakeWebcam.sh input_video.mp4 /dev/video0

INPUT=$1
DEVICE_VIDEO=$2

[ $# -lt 2 ] && { echo "Usa este script de la siguiente manera: fakeWebcam (VIDEO_INPUT) (DEVICE_VIDEO)"; exit 2; }

if [ ! -r $INPUT ] || [ ! -w $DEVICE_VIDEO ]; then
	echo "Por favor, indica archivos que existan y tengan permisos"
	exit 2
fi

while [ true ]; do
   read -t 1 -n 1
   if [ $? = 0 ] ; then
      exit ;
   else
	ffmpeg -re -i $INPUT -map 0:v -f v4l2 $DEVICE_VIDEO
   fi
done
