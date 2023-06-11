#!/usr/bin/gnuplot -persist

clear
set size square
set autoscale
set grid


# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'varcolor.3.png'

set errorbars front 1.000000  linecolor -1 linewidth 1.000 dashtype "-"
set boxwidth 0.2 absolute
unset key
unset parametric

set style data linespoints
## set style data lines
## set title "variable color using 'lc palette z'" 


set title "Teardrop curve - (pos-x[u] versus pos-y[u])" 



## by3(x) = (((int(x)%3)+1)/6.)
## by4(x) = (((int(x)%4)+1)/7.)
## rgbfudge(x) = x*51*32768 + (11-x)*51*128 + int(abs(5.5-x)*510/9.)

NO_ANIMATION = 1

## ==============================================
## DATA COLUMNS FOR coloring.dat FILE
## ==============================================
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

## ==============================================
## TESTING BELOW
## ==============================================
## Last datafile plotted: "coloring.dat"

# plot 'coloring.dat' using 1:(1):1 with points pt 11 lc pal z,      
# '' using 1:2:(.1):1 with circles lc pal z,      
# '' using 1:3:2:6:5:1 with candlesticks lc pal z,      
# '' using ($1+.3):3:2:6:5:1 with financebars lc pal z,      
# '' using 1:(8):(by3($0)):(by4($0)):1 with boxxy lc pal z fs solid,      
# '' using 1:(-$2/2):1 with boxes lc pal z

## FOR SQUARE GRID - TO SEE NON-EXPANDED CURVE
# ===========================================
## https://stackoverflow.com/questions/49825712/gnuplot-coloring-a-plot-according-to-x-value

set palette defined ( 0 'purple', 10 'blue', 20 'green', 30 'yellow', 40 'orange', 50 'red' )

# GOOD
# u[2] 
# curr_frate[14] 
# x_frate[16] 
# y_frate[17] 

# IMPORTANT NOTE: 
# $14 = value in column 14 ===> curr_frate[14]
# Then value at "column 14" is used to pick the color from the color scale (vertical right)

## plot   'coloring.dat' using 2:8 with lines linewidth 3 
## replot 'coloring.dat' using 2:9 with lines linewidth 3 

## replot 'coloring.dat' using 8:9 with lines linewidth 3 

## ==================================================================
## File: 05-plot-NO-color.gp

set xlabel "pos-x[u]"
set xrange [ -40.00000 : +40.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback

set ylabel "pos-y[u]"
set yrange [ -40.00000 : +40.0000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback

set zrange [ * : * ] noreverse writeback

set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault

## NO COLOR (linecolor palette)
plot   'coloring.dat' using 8:9 with lines linewidth 3 

## u-versus-pos-x[u] ==> col-valueof[x]
# plot   'coloring.dat' using 2:(($14)):8 with lines linewidth 3 linecolor palette
# replot 'coloring.dat' using 2:(($14)):9 with lines linewidth 3 linecolor palette

## ===========================================

