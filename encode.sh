rm $1.mp4

ffmpeg -r $3 -i $2/frame%05d.png -i $1 -map 0:0 -map 1:0 -crf 18 -pix_fmt yuv420p -b:a 256k $1.mp4
