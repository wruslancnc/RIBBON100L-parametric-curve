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
set title "variable color using 'lc palette z'" 

set xlabel "x-value(u)"
set xrange [ -20.00000 : +20.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback

set ylabel "y-value(u)"
set yrange [ -50.00000 : +50.0000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback

set zrange [ * : * ] noreverse writeback

set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault

by3(x) = (((int(x)%3)+1)/6.)
by4(x) = (((int(x)%4)+1)/7.)
rgbfudge(x) = x*51*32768 + (11-x)*51*128 + int(abs(5.5-x)*510/9.)

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


# plot 'coloring.dat' using 1:(1):1 with points pt 11 lc pal z

# plot 'coloring.dat' using 8:(9):curr_frate with points pt 11 lc pal z
# plot 'coloring.dat' using 8:(9):14 with points pt 11 lc pal z

# plot 'coloring.dat' using 8:9 with points pt 11 lc pal z



## FOR SQUARE GRID - TO SEE NON-EXPANDED CURVE
set xrange [ -50 : +50 ] noreverse nowriteback
set yrange [ -50 : +50 ] noreverse nowriteback
# GOOD plot 'coloring.dat' using 8:(14):9 with points pt 11

# WRONG COLORS
plot 'coloring.dat' using 8:(14):9 with points pt 11 lc pal z


