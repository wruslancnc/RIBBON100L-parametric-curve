#!/usr/bin/gnuplot -persist

## File: 01-plot2D-Teardrop-u-histogram.gp
## Date: Jun 11 Jun 2023 10:07:52 AM +08
## Gnuplpot Version 5.2 patchlevel 8

clear
set size square
set autoscale
set grid

# NO_ANIMATION = 1

# set terminal png size 800,800 enhanced font "Helvetica,10"

## ===================== AUTOMATED OUTPUT FILE ======================

# CHANGE PART 1 OF 3
# set output "Image-Teardrop-u-histogram.png"

# CHANGE PART 2 OF 3
set title  "Butterfly u-histogram FC10[2] FC20[3] FC25[4] FC30[5] FC40[6]" 

## ==================================================================
set xlabel "[u]"
set xrange [ 0.00000 : 1.0000 ] 

set ylabel "counts[u]"
## set yrange [ -40.00000 : +40.0000 ] 

# CHANGE PART 3 OF 3
plot   'butterfly-u-histogram.dat' using 1:2 with linespoints
replot 'butterfly-u-histogram.dat' using 1:3 with linespoints
replot 'butterfly-u-histogram.dat' using 1:4 with linespoints
replot 'butterfly-u-histogram.dat' using 1:5 with linespoints
replot 'butterfly-u-histogram.dat' using 1:6 with linespoints

## ==================================================================
## INFO DATA COLUMNS IN HISTOGRAM FILE
## ==================================================================
# [Col 1] BIN 
# [Col 2] FC10    
# [Col 3] FC20 
# [Col 4} FC25    
# [Col 5] FC30 
# [Col 6] FC40

## ==================================================================
## ALHAMDULILLAH 3 TIMES
## ==================================================================

