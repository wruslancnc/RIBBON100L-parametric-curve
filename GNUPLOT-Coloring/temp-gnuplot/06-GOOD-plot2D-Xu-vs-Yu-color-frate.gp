#!/usr/bin/gnuplot -persist

## File: 06-plot2D-Xu-vs-Yu-color-frate.gp
## Date: Sun 11 Jun 2023 10:07:52 AM +08
## Gnuplpot Version 5.2 patchlevel 8

clear
set size square
set autoscale
set grid
NO_ANIMATION = 1

## ===================== AUTOMATED OUTPUT FILE ======================
set terminal png size 800,800 enhanced font "Helvetica,10"
## set output 'output.png'

set output "Image-Teardrop-FC20-X-Y-colorFRate.png"
set title  "Teardrop FC20 curve x[u] versus y[u] Color = Feedrate" 

set xlabel "pos-x[u]"
set xrange [ -40.00000 : +40.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback

set ylabel "pos-y[u]"
set yrange [ -40.00000 : +40.0000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback

set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback

## COLOR SETTINGS
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set palette defined ( 0 'purple', 10 'blue', 20 'green', 30 'yellow', 40 'orange', 50 'red' )

## PLOT EXECUTION
## ==================================================================
## NO COLOR (REMOVE linecolor palette)
## plot   'TeardropFC20.dat' using 8:9 with lines linewidth 3 

## COLORED POINTS COL 14 = FEEDRATE
## (X:Y:COL) PLOT WITH COLOR IN COLUMN 3  
plot   'TeardropFC20.dat' using 8:9:14 with lines linewidth 3 linecolor palette


## ==================================================================
## INFO DATA COLUMNS FOR coloring.dat FILE
## ==================================================================
# rtime[1] 
# u[2] 
# u_next[3] 
# t_interpol[4] 
# first_order[5] 
# second_order[6] 
# diff[7] 
# pos_x[8] 
# pos_y[9]
# pos_r[10] 
# eps[11]
# rho[12] 
# curr_tang_accn[13] 
# curr_frate[14] 
# frate_limit[15] 
# x_frate[16] 
# y_frate[17] 
# frate_command[18], 
# diff_frate[19]

## ==================================================================
# REFERENCES
# ===================================================================

## MANNING Using Gnuplot
## https://stackoverflow.com/questions/49825712/gnuplot-coloring-a-plot-according-to-x-value

## TESTING
# plot 'coloring.dat' using 1:(1):1 with points pt 11 lc pal z,      
# '' using 1:2:(.1):1 with circles lc pal z,      
# '' using 1:3:2:6:5:1 with candlesticks lc pal z,      
# '' using ($1+.3):3:2:6:5:1 with financebars lc pal z,      
# '' using 1:(8):(by3($0)):(by4($0)):1 with boxxy lc pal z fs solid,      
# '' using 1:(-$2/2):1 with boxes lc pal z

## ABBREVIATIONS
# u = using
# pt = pointstype
# lc = linecolor
# pal =  palette

## ==================================================================

