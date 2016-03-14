reset
#set term postscript eps enhanced monochrome 25 （可以用来生成黑白色图像）

set terminal postscript eps enhanced color 30
set output "evaluation2_data_loss_rate.eps"

set xrange [1:5]
set yrange [0:0.12]

set xtics("10" 1,"20" 2, "30" 3,"40" 4, "50" 5) font ", 28"
set ytics("0" 0, "0.03" 0.03, "0.06" 0.06, "0.09" 0.09, "0.12" 0.12) font ", 28"

set xlabel "Number of nodes" font ", 28" offset 0,0.5
set ylabel "Data loss rate" font ", 28" offset 1.5,0

#set grid
set key left top font ", 25"
#set key box
set size square
set key Left
set key reverse

#ls表示lines style; lt表示line type; pt表示point type; lc表示line color; lw表示line width; ps表示point size
plot "data.txt" using 1:2 title "Random" with linespoints lw 1 pt 4 lc 7 ps 3, '' using 1:3 title "Prune" with linespoints lw 1 pt 6 lc 10 ps 3, '' using 1:4 title "Combine" with linespoints lw 1 pt 8 lc 1 ps 3