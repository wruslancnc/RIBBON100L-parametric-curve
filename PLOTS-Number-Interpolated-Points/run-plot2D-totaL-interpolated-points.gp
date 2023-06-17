#!/usr/bin/gnuplot -persist

## File: 01-plot2D-error-per-unit-length.gp
## Date: Jun 11 Jun 2023 10:07:52 AM +08
## Gnuplpot Version 5.2 patchlevel 8

clear
set size square
set autoscale
set grid
NO_ANIMATION = 1


## ===================== AUTOMATED OUTPUT FILE ======================
# CHANGE PART 1 OF 3
set terminal png size 800,800 enhanced font "Helvetica,10"

set output "Img-10-Ribbon-100L-Total-Interpolated-Points.png"
set title  "Ribbon-100L - Feedrate Command versus Total Interpolated Points" 

# set xrange[ : ]
set yrange[0 : 10000]

unset border
set tics scale 0
set xzeroaxis
set ylabel '(Total interpolated points)'
set xlabel '(User Feedrate Command FC)'

plot '10-Ribbon-100L-total-interpolated-points.dat' using 0:2:xticlabel(1)  with impulse linewidth 3 notitle, '' using 0:2:(sprintf("[%.0f]",$2))  with labels notitle

## ==================================================================
## ALHAMDULILLAH 3 TIMES
## ==================================================================

