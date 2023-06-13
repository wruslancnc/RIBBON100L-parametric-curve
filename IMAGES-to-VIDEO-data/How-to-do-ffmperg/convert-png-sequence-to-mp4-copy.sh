#! /bin/bash

## bhttps://www.youtube.com/watch?v=IZpcbsgydOw

## How to use ffmpeg to convert sequence of PNGs to MP$ file

## SETTINGS 
## framerate   = 1/5 means 5 seconds hold per frame 
## input folder = uploadXX-XXX/Image%d.png
## output mp4 frame/sec  = -r 30   

## ffmpeg -framerate 1/5 -i upload01-TEARDROP/Image%d.png       -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 01-TEARDROP-Feedrate-Profile.mp4
## ffmpeg -framerate 1/5 -i upload02-BUTTERFLY/Image%d.png      -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 02-BUTTERFLY-Feedrate-Profile.mp4
## ffmpeg -framerate 1/5 -i upload03-ELLIPSE/Image%d.png        -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 03-ELLIPSE-Feedrate-Profile.mp4
## ffmpeg -framerate 1/5 -i upload04-SKEWED-ASTROID/Image%d.png -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 04-SKEWED-ASTROID-Feedrate-Profile.mp4
## ffmpeg -framerate 1/5 -i upload05-CIRCLE/Image%d.png         -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 05-CIRCLE-Feedrate-Profile.mp4
## ffmpeg -framerate 1/5 -i upload06-ASTEPI/Image%d.png         -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 06-ASTEPI-Feedrate-Profile.mp4
## ffmpeg -framerate 1/5 -i upload07-SNAILSHELL/Image%d.png     -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 07-SNAILSHELL-Feedrate-Profile.mp4
   ffmpeg -framerate 1/5 -i upload08-SNAHYP/Image%d.png         -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 08-SNAHYP-Feedrate-Profile.mp4
## ffmpeg -framerate 1/5 -i upload09-RIBBON-10L/Image%d.png     -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 09-RIBBON-10L-Feedrate-Profile.mp4
## ffmpeg -framerate 1/5 -i upload10-RIBBON-100L/Image%d.png    -vf scale=800:800 -c:v libx264  -pix_fmt yuv420p -r 30 10-RIBBON-100L-Feedrate-Profile.mp4

