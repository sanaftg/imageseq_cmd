@echo off
:INPUT_START
echo imageseq folder (jpgs)
SET INPUT_STR=
SET /P INPUT_STR=

ffmpeg -framerate 30 -i %INPUT_STR%/%%04d.jpg -vcodec libx264 -pix_fmt yuv420p -r 30 imageseq.mp4
