#!/usr/bin/gnuplot -persist

## File: 01-FCXX-plot2D-Xu-vs-Yu-color-frate.gp
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
set output "Image-Algo20-x-y-cfrate-TEARDROP-FC10-data_ngcode.png"
# set output "Image-Algo20-x-y-cfrate-TEARDROP-FC20-data_ngcode.png"
# set output "Image-Algo20-x-y-cfrate-TEARDROP-FC25-data_ngcode.png"
# set output "Image-Algo20-x-y-cfrate-TEARDROP-FC30-data_ngcode.png"
# set output "Image-Algo20-x-y-cfrate-TEARDROP-FC40-data_ngcode.png"

# CHANGE PART 2 OF 3
set title  "Teardrop FC10 curve x[u] versus y[u] Color = Feedrate" 
# set title  "Teardrop FC20 curve x[u] versus y[u] Color = Feedrate" 
# set title  "Teardrop FC25 curve x[u] versus y[u] Color = Feedrate" 
# set title  "Teardrop FC30 curve x[u] versus y[u] Color = Feedrate" 
# set title  "Teardrop FC40 curve x[u] versus y[u] Color = Feedrate" 

## ==================================================================
set xlabel "pos-x[u]"
set xrange [ -40.00000 : +40.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback

set ylabel "pos-y[u]"
set yrange [ -40.00000 : +40.0000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback

set zrange [ * : * ] noreverse writeback
# set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback

## COLOR SETTINGS
# ===================================================================
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set palette defined ( 0 'purple', 10 'blue', 20 'green', 30 'yellow', 40 'orange', 50 'red' )

#  FIXED RANGE COLOR FIXED - NOT AUTORANGE (WHICH TAKES (MAX, MIN))
set cbrange [0:40] noreverse writeback


## PLOT EXECUTION
## ==================================================================
## COLORED POINTS COL 3 = FEEDRATE
## (X:Y:COL) PLOT WITH COLOR IN THIRD COLUMN 
## Using X-Value:Y-Value:FRate-Value ==> 5:7:3

## CHANGE PART 3 OF 3
plot  'Algo20-TEARDROP-FC10-data_ngcode.ngc' using 5:7:3 with lines linewidth 3 linecolor palette
# plot  'Algo20-TEARDROP-FC20-data_ngcode.ngc' using 5:7:3 with lines linewidth 3 linecolor palette
# plot  'Algo20-TEARDROP-FC25-data_ngcode.ngc' using 5:7:3 with lines linewidth 3 linecolor palette
# plot  'Algo20-TEARDROP-FC30-data_ngcode.ngc' using 5:7:3 with lines linewidth 3 linecolor palette
# plot  'Algo20-TEARDROP-FC40-data_ngcode.ngc' using 5:7:3 with lines linewidth 3 linecolor palette


## ==================================================================
## INFO DATA COLUMNS IN NGC FILE
## ==================================================================
# [Col 1] G01 
# [Col 2] F    
# [Col 3] FRate-Value = 3.000000 
# [Col 4} X[    
# [Col 5] X-Value = 0.000000] 
# [Col 6] Y[    
# [Col 7] Y-Value = 0.000000] 
# [Col 8] (#u= 
# [Col 9] U-Value = 0.000000000 
# [Col10] eps= 
# [Col11] eps-Value = 0.000000117829 
# [Col12] Xfrate= 
# [Col13] Xfrate-Value = -2.121320 
# [Col14] Yfrate= 
# [Col15] Yfrate-Value = -2.121320 
# [Col16] frlimit=  
# [Col17] frlimit-Value = 0.000000 
# [Col18] frdiff=
# [Col19] frdiff-Value = -3.000000000 
# [Col20] frcmd= 
# [Col21] frcmd-Value = 10.000 
# [Col22} #) 

## ==================================================================
## ALHAMDULILLAH 3 TIMES
## ==================================================================

