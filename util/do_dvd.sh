#!/bin/bash

export VIDEO_FORMAT=PAL
source=${1:?"Must specify source AVI"}
# aspect=${2:?"Must specify aspect, e.g. 16:9 or 4:3"}

targetDir=/tmp/$(basename $source)

echo ${targetDir}

#encode="ffmpeg -threads 2 -i ${source} -target pal-dvd -ps 2000000000 -aspect ${aspect} ${targetDir}/output.mpg"
encode="ffmpeg -threads 2 -i ${source} -target pal-dvd -ps 2000000000 ${targetDir}/output.mpg"

#dvdTitle="dvdauthor -o ${targetDir}/dvd -t -v "${VIDEO_FORMAT}+${aspect}" -f ${targetDir}/output.mpg"
dvdTitle="dvdauthor -o ${targetDir}/dvd -t -v "${VIDEO_FORMAT}" -f ${targetDir}/output.mpg"

dvdToc="dvdauthor -o ${targetDir}/dvd -T"

makeIso="mkisofs -dvd-video -o ${targetDir}/dvd.iso ${targetDir}/dvd/"

burn="growisofs -dvd-compat -Z /dev/dvd=${targetDir}/dvd.iso"

echo "DOING THE DVD ${source} aspect ${aspect} into ${targetDir}" && \
    mkdir ${targetDir} && \
    mkdir ${targetDir}/dvd && \
    rm -rf ${targetDir}/dvd && \
    echo "DOING THE ENCODING USING ffmpeg" && \
    ${encode} && \
    echo "DOING DVDAUTHOR" && \
    ${dvdTitle} && \
    echo "CREATING TABLE OF CONTENTS" && \
    ${dvdToc} && \
    echo "CREATING DVD ISO" && \
    ${makeIso} && \
    echo "BURNING DVD" && \
    ${burn}


