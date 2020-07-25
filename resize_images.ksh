#!/usr/bin/env ksh

mkdir -p images

# https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/

smartresize() {
    mogrify -path $3 \
            -filter Triangle \
            -define filter:support=2 \
            -thumbnail $2\> \
            -unsharp 0.25x0.08+8.3+0.045 \
            -dither None -posterize 136 \
            -quality 82 \
            -define jpeg:fancy-upsampling=off \
            -define png:compression-filter=5 \
            -define png:compression-level=9 \
            -define png:compression-strategy=1 \
            -define png:exclude-chunk=all \
            -interlace none \
            -colorspace sRGB $1
}

for f in images_raw/*; do
    t=`echo $f | sed -e 's/images_raw/images/g'`
    if  [ ! -f $t ]; then
        cp $f $t        
        smartresize $t 740 images/
    fi
done
