#!/usr/local/bin/gnuplot -persist

# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'running_avg.1.png'

set border 3 front lt black linewidth 1.000 dashtype solid
set key fixed right center vertical Left reverse enhanced autotitle box lt black linewidth 1.000 dashtype solid
set key invert samplen 4 spacing 1 width 0 height 0 
set style data linespoints

set xtics border in scale 1,0.5 nomirror norotate  autojustify
set ytics border in scale 1,0.5 nomirror norotate  autojustify

set title "Demonstrate use of assignment and serial evaluation operators\nto accumulate statistics as successive data lines are read in\n" 
set xrange [ 0.00000 : 1.0000 ] noreverse nowriteback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault

samples(x) = $0 > 4 ? 5 : ($0+1)
avg5(x) = (shift5(x), (back1+back2+back3+back4+back5)/samples($0))
shift5(x) = (back5 = back4, back4 = back3, back3 = back2, back2 = back1, back1 = x)
init(x) = (back1 = back2 = back3 = back4 = back5 = sum = 0)
NO_ANIMATION = 1
back1 = 5.0
back2 = 9.0
back3 = 8.0
back4 = 9.0
back5 = 10.0

datafile = "silver.dat"
sum = 1918.0
## Last datafile plotted: "silver.dat"
plot sum = init(0),       datafile using 2:11 title 'data' lw 1 lc rgb 'forest-green', '' using 2:(avg5($2)) title "running mean over previous 5 points" pt 7 ps 0.5 lw 1 lc rgb "blue",           '' using 2:(sum = sum + $2, sum/($0+1)) title "cumulative mean" pt 1 lw 1 lc rgb "dark-red"

