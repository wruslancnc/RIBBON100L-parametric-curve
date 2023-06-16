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
set title  "Ribbon-10L u-histogram for different user Feedrate Command (FC)" 

## ==================================================================
set xlabel "[u]"
set xrange [ 0.00000 : 1.0000 ] 

set ylabel "counts[u]"
set yrange [ 600 : 900 ] 

# CHANGE PART 3 OF 3
plot   '09-Ribbon-10L-u-histogram.dat' using 1:2 with linespoints title 'FC10'
replot '09-Ribbon-10L-u-histogram.dat' using 1:3 with linespoints title 'FC20'
replot '09-Ribbon-10L-u-histogram.dat' using 1:4 with linespoints title 'FC25'
replot '09-Ribbon-10L-u-histogram.dat' using 1:5 with linespoints title 'FC30'
replot '09-Ribbon-10L-u-histogram.dat' using 1:6 with linespoints title 'FC40'

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

