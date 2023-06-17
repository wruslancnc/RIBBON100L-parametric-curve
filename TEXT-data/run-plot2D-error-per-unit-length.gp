#!/usr/bin/gnuplot -persist

## File: 01-plot2D-error-per-unit-length.gp
## Date: Jun 11 Jun 2023 10:07:52 AM +08
## Gnuplpot Version 5.2 patchlevel 8

clear
set size square
set autoscale
set grid
NO_ANIMATION = 1

set terminal png size 800,800 enhanced font "Helvetica,10"

## ===================== AUTOMATED OUTPUT FILE ======================

# CHANGE PART 1 OF 3
set output "Img-FC10-Error-Per-Unit-Length-All-Parametric-Curves.png"
set title  "FC10-Error-per-unit-length traversed for all parametric curves" 

unset border
set tics scale 0
set xzeroaxis
set ylabel '(error/mm)'
set xlabel '(curve type)'


plot 'fc10-error-per-unit-length.dat' using 0:2:xticlabel(1) with impulse linewidth 3 notitle, '' using 0:2:(sprintf("[%.9f]",$2))  with labels notitle

## ==================================================================
## ALHAMDULILLAH 3 TIMES
## ==================================================================

