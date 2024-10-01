#!/bin/bash
export gendomain_song=/home/u22/chopinsong/CTSM_SONG/tools/mksurfdata_map

for FILE in ./src/*; do

filename=$(basename ${FILE})
echo "===================================================" >> ./diff_mksurfdata.log
echo ${filename} >> ./diff_mksurfdata.log
diff ./src/${filename} ${gendomain_song}/src/${filename}  >> ./diff_mksurfdata.log
echo "===================================================" >> ./diff_mksurfdata.log

done
