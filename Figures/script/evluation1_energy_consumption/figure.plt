reset
#set term postscript eps enhanced monochrome 25 （可以用来生成黑白色图像）

set terminal postscript eps enhanced color 30
set output "evaluation1_voltage.eps"

set xrange [100:700]
set yrange [2.45:2.70]

set xtics("100" 100,"200" 200, "300" 300,"400" 400, "500" 500, "600" 600, "700" 700) font ", 28"
set ytics("2.45" 2.45, "2.50" 2.50, "2.55" 2.55, "2.60" 2.60, "2.65" 2.65, "2.70" 2.70) font ", 28"

set ylabel "Voltage of batteries (Volts)" font ", 28" offset 1.5,0
set xlabel "Number of time slot" font ", 28" offset 0,0.5

#set grid

set key right top font ", 25"
#set key box
set size square
set key Left
set key reverse

#ls表示lines style; lt表示line type; pt表示point type; lc表示line color; lw表示line width; ps表示point size
plot "data.txt" using 1:3 title "Overlap" with linespoints lw 1 pt 6 lc 10 ps 3,  ''using 1:2 title "GA" with linespoints lw 1 pt 4 lc 7 ps 3